/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2024 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "tim.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "stdlib.h"
#include "stdio.h"
#include "string.h"
#include "sys.h"
#include "lcd.h"
#include "touch.h"
#include "delay.h"
#include "image.h"
#include "debounce.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */
typedef enum{
  DAY,
  NIGHT,
  SCENE_COUNT 
} Scene;

typedef enum{
  BACKGROUND,
  BIRD,
  CACTUS,
  DINO,
  STAR
} ObjectType;

typedef struct{
  uint16_t* image;
  uint16_t width;
  uint16_t height;
  uint16_t* last_image;
  uint16_t last_width;
  uint16_t last_height;
  uint8_t is_flipped;
  int32_t pos_x;
  int32_t pos_y;
  int32_t last_pos_x;
  int32_t last_pos_y;
  int32_t speed_x;
  int32_t speed_y;
  uint8_t animation_frame;
  uint8_t track;
  ObjectType type;
  uint8_t is_active;
} Object;
/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
#define LCD_HEIGHT 240
#define LCD_WIDTH 320
#define SPAWN_ZONE_WIDTH 60
#define BUTTON_NUM 4
#define BUTTON_HEIGHT 45
#define BUTTON_WIDTH (LCD_WIDTH / BUTTON_NUM)
#define BUTTON_TEXT_PRE_WIDTH 15
#define BUTTON_TEXT_PRE_HEIGHT 8
#define TRACK_NUM 3
#define TRACK_HEIGHT ((LCD_HEIGHT - BUTTON_HEIGHT) / TRACK_NUM)

#define BACKGROUND_ADDR 0
#define BACKGOUND_COUNT 6
#define BIRD_ADDR BACKGROUND_ADDR + BACKGOUND_COUNT
#define BIRD_MAX_COUNT 4
#define CACTUS_ADDR BIRD_ADDR + BIRD_MAX_COUNT
#define CACTUS_MAX_COUNT 2
#define STAR_ADDR CACTUS_ADDR + CACTUS_MAX_COUNT
#define STAR_COUNT 1
#define DINO_ADDR STAR_ADDR + STAR_COUNT
#define DINO_COUNT 1
#define OBJECT_COUNT DINO_ADDR + DINO_COUNT

#define MAX_TIME 30
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
#define MIN(a, b) ((a) < (b) ? (a) : (b))
#define MAX(a, b) ((a) > (b) ? (a) : (b))
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
extern uint64_t timer;
extern uint8_t forward_touch_count;
extern uint8_t backward_touch_count;
extern uint8_t frame_update_flag;
extern uint8_t jump_flag;
extern uint8_t duck_flag;
extern uint8_t up_flag;
extern uint8_t down_flag;

extern Key_HandleTypeDef Key0;
extern Key_HandleTypeDef Key1;
extern Key_HandleTypeDef Key_WKUP;
uint8_t key0_pressed_flag = 0;
uint8_t key1_pressed_flag = 0;
uint8_t key_wkup_pressed_flag = 0;

Scene scene = DAY;
Object* objects[OBJECT_COUNT];
uint8_t is_first_frame;
uint8_t redraw_window[LCD_WIDTH * (LCD_HEIGHT - BUTTON_HEIGHT) / 8];
uint8_t color_bitmap[LCD_WIDTH * (LCD_HEIGHT - BUTTON_HEIGHT) / 8];
uint8_t is_jumping = 0;
uint8_t jumping_countdown = 0;
uint8_t is_ducking = 0;
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */
extern void clear_touch_history();

void LCD_SetImage(uint16_t x, uint16_t y, uint16_t w, uint16_t h, uint16_t *image, uint8_t is_flipped);
void LCD_DrawWindow();
void init_scene();
void init_buttons();
void change_scene();
void generate_scene();
void update_scene();
void draw_scene();
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{

  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */
  delay_init(72);
  LCD_Init();
  LCD_Display_Dir(1);
  tp_dev.init();
  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_TIM3_Init();
  /* USER CODE BEGIN 2 */
  __HAL_TIM_CLEAR_IT(&htim3,TIM_IT_UPDATE);
  HAL_TIM_Base_Start_IT(&htim3);
  Debounce_InitKey0();
  Debounce_InitKey1();
  Debounce_InitKeyWKUP();

  init_buttons();
  init_scene();
  generate_scene();
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
    key0_pressed_flag = Debounce_ReadPress(&Key0);
    key1_pressed_flag = Debounce_ReadPress(&Key1);
    key_wkup_pressed_flag = Debounce_ReadPress(&Key_WKUP);

    if(key0_pressed_flag){
      change_scene();
    }
    
    update_scene();
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.HSEPredivValue = RCC_HSE_PREDIV_DIV1;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL9;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */
void LCD_SetImage(uint16_t x, uint16_t y, uint16_t w, uint16_t h, uint16_t *image, uint8_t is_flipped){
  if(is_flipped){
    for(int i = 0; i < h; i++){
      for(int j = 0; j < w; j++){
        uint16_t flipped_j = w - 1 - j;
        uint32_t bit = (y + i) * LCD_WIDTH + x + flipped_j;
        if(x + flipped_j >= LCD_WIDTH || y + i >= (LCD_HEIGHT - BUTTON_HEIGHT) || !(redraw_window[bit / 8] & (1 << (bit % 8)))){
          continue;
        }
        if(image[i * w + j] != IMG_BG){
          if(image[i * w + j] == IMG_BLACK){
            color_bitmap[bit / 8] |= 1 << (bit % 8);
          }else{
            color_bitmap[bit / 8] &= ~(1 << (bit % 8));
          }
        }
      }
    }
  }else{
    for(int i = 0; i < h; i++){
      for(int j = 0; j < w; j++){
        uint32_t bit = (y + i) * LCD_WIDTH + x + j;
        if(x + j >= LCD_WIDTH || y + i >= (LCD_HEIGHT - BUTTON_HEIGHT) || !(redraw_window[bit / 8] & (1 << (bit % 8)))){
          continue;
        }
        if(image[i * w + j] != IMG_BG){
          if(image[i * w + j] == IMG_BLACK){
            color_bitmap[bit / 8] |= 1 << (bit % 8);
          }else{
            color_bitmap[bit / 8] &= ~(1 << (bit % 8));
          }
        }
      }
    }
  }
}

void LCD_DrawWindow(){
  for(int i = 0; i < LCD_HEIGHT - BUTTON_HEIGHT; i++){
    for(int j = 0; j < LCD_WIDTH; j++){
      uint32_t bit = i * LCD_WIDTH + j;
      if(redraw_window[bit / 8] & (1 << (bit % 8))){
        LCD_Fast_DrawPoint(j, i, color_bitmap[bit / 8] & (1 << (bit % 8)) ? (scene == DAY ? IMG_BLACK : IMG_WHITE) : (scene == DAY ? IMG_WHITE : IMG_BLACK));
      }
    }
  }
}

void init_scene(){
  for(int i = 0; i < OBJECT_COUNT; i++){
    objects[i] = (Object *)malloc(sizeof(Object));
    objects[i]->is_active = 0;
    if(i < BACKGROUND_ADDR + BACKGOUND_COUNT){
      objects[i]->type = BACKGROUND;
    }else if(i < BIRD_ADDR + BIRD_MAX_COUNT){
      objects[i]->type = BIRD;
    }else if(i < CACTUS_ADDR + CACTUS_MAX_COUNT){
      objects[i]->type = CACTUS;
    }else if(i < DINO_ADDR + DINO_COUNT){
      objects[i]->type = DINO;
    }else{
      objects[i]->type = STAR;
    }
  }
}

void init_buttons(){
  POINT_COLOR = IMG_BLACK;
  LCD_Fill(0, LCD_HEIGHT - BUTTON_HEIGHT, LCD_WIDTH, LCD_HEIGHT, LIGHTBLUE);
  BACK_COLOR = LIGHTBLUE;
  LCD_ShowString(BUTTON_TEXT_PRE_WIDTH, LCD_HEIGHT - BUTTON_HEIGHT + BUTTON_TEXT_PRE_HEIGHT, BUTTON_WIDTH, BUTTON_HEIGHT, 24, (uint8_t*)"Jump");
  LCD_Fill(BUTTON_WIDTH, LCD_HEIGHT - BUTTON_HEIGHT, BUTTON_WIDTH * 2, LCD_HEIGHT, YELLOW);
  BACK_COLOR = YELLOW;
  LCD_ShowString(BUTTON_TEXT_PRE_WIDTH + BUTTON_WIDTH, LCD_HEIGHT - BUTTON_HEIGHT + BUTTON_TEXT_PRE_HEIGHT, BUTTON_WIDTH, BUTTON_HEIGHT, 24, (uint8_t*)"Duck");
  LCD_Fill(BUTTON_WIDTH * 2, LCD_HEIGHT - BUTTON_HEIGHT, BUTTON_WIDTH * 3, LCD_HEIGHT, BRRED);
  BACK_COLOR = BRRED;
  LCD_ShowString(BUTTON_TEXT_PRE_WIDTH + BUTTON_WIDTH * 2, LCD_HEIGHT - BUTTON_HEIGHT + BUTTON_TEXT_PRE_HEIGHT, BUTTON_WIDTH, BUTTON_HEIGHT, 24, (uint8_t*)" Up ");
  LCD_Fill(BUTTON_WIDTH * 3, LCD_HEIGHT - BUTTON_HEIGHT, BUTTON_WIDTH * 4, LCD_HEIGHT, CYAN);
  BACK_COLOR = CYAN;
  LCD_ShowString(BUTTON_TEXT_PRE_WIDTH + BUTTON_WIDTH * 3, LCD_HEIGHT - BUTTON_HEIGHT + BUTTON_TEXT_PRE_HEIGHT, BUTTON_WIDTH, BUTTON_HEIGHT, 24, (uint8_t*)"Down");
}

void generate_scene(){
  srand(timer);
  uint8_t random;

  /* Reset all objects */
  for(int i = 0; i < OBJECT_COUNT; i++){
    objects[i]->is_active = 0;
  }

  /* Dino */
  Object* dino = objects[DINO_ADDR];
  dino->image = (uint16_t *)dino_mid;
  dino->width = DINO_WIDTH;
  dino->height = DINO_HEIGHT;
  dino->is_flipped = 0;
  if(dino->track < 1 || dino->track > 3){
    dino->track = 2;
  }
  dino->pos_x = (SPAWN_ZONE_WIDTH - DINO_WIDTH) / 2;
  dino->pos_y = dino->track * TRACK_HEIGHT;
  dino->speed_x = 0;
  dino->speed_y = 0;
  dino->animation_frame = 0;
  dino->is_active = 1;
  is_jumping = 0;
  is_ducking = 0;
  jumping_countdown = 0;
  

  /* Star */
  Object* star = objects[STAR_ADDR];
  if(scene == DAY){
    star->image = (uint16_t *)sun;
    star->width = SUN_WIDTH;
    star->height = SUN_HEIGHT;
  }else{
    star->image = (uint16_t *)moon;
    star->width = MOON_WIDTH;
    star->height = MOON_HEIGHT;
  }
  star->is_flipped = 0;
  star->pos_x = LCD_WIDTH - star->width;
  star->pos_y = star->height;
  star->is_active = 1;

  /* Background */
  Object* background;
  for(int i = BACKGROUND_ADDR; i < BACKGROUND_ADDR + BACKGOUND_COUNT; i++){
    background = objects[i];
    random = rand() % 2; // 0: horizon, 1: mountain
    if(random == 0){
      random = rand() % 3 + 1;
      if(random == 1){
        background->image = (uint16_t *)horizon_1;
      }else if(random == 2){
        background->image = (uint16_t *)horizon_2;
      }else{
        background->image = (uint16_t *)horizon_3;
      }
      background->width = HORIZON_WIDTH;
      background->height = HORIZON_HEIGHT;
    }else{
      random = rand() % 2 + 1;
      if(random == 1){
        background->image = (uint16_t *)mountain_1;
      }else{
        background->image = (uint16_t *)mountain_2;
      }
      background->width = MOUNTAIN_WIDTH;
      background->height = MOUNTAIN_HEIGHT;
    }
    background->is_flipped = rand() % 2;
    background->pos_x = i % 2 == 0 ? 0 : LCD_WIDTH - background->width;
    background->pos_y = (i % 3 + 1) * TRACK_HEIGHT;
    background->is_active = 1;
  }

  /* Bird */
  Object* bird;
  uint8_t bird_num = rand() % (BIRD_MAX_COUNT + 1);
  for(int i = BIRD_ADDR; i < BIRD_ADDR + bird_num; i++){
    bird = objects[i];
    random = rand() % 2;
    if(random == 0){
      bird->image = (uint16_t *)bird_1;
      bird->animation_frame = 0;
    }else{
      bird->image = (uint16_t *)bird_2;
      bird->animation_frame = 1;
    }
    bird->width = BIRD_WIDTH;
    bird->height = BIRD_HEIGHT;
    bird->is_flipped = rand() % 2;
    bird->track = rand() % TRACK_NUM + 1;
    bird->pos_x = SPAWN_ZONE_WIDTH + rand() % (LCD_WIDTH - SPAWN_ZONE_WIDTH - bird->width);
    bird->pos_y = (bird->track - 1) * TRACK_HEIGHT + BIRD_HEIGHT;
    bird->is_active = 1;
  }

  /* Cactus */
  Object* cactus;
  uint8_t cactus_num = rand() % (CACTUS_MAX_COUNT + 1);
  for(int i = CACTUS_ADDR; i < CACTUS_ADDR + cactus_num; i++){
    cactus = objects[i];
    random = rand() % 3 + 1;
  if(random == 1){
      cactus->image = (uint16_t *)cactus_small_1;
      cactus->width = CACTUS_SMALL_1_WIDTH;
      cactus->height = CACTUS_SMALL_1_HEIGHT;
    }else if(random == 2){
      cactus->image = (uint16_t *)cactus_small_2;
      cactus->width = CACTUS_SMALL_2_WIDTH;
      cactus->height = CACTUS_SMALL_2_HEIGHT;
    }else{
      cactus->image = (uint16_t *)cactus_small_3;
      cactus->width = CACTUS_SMALL_3_WIDTH;
      cactus->height = CACTUS_SMALL_3_HEIGHT;
    }
    cactus->is_flipped = rand() % 2;
    cactus->track = rand() % TRACK_NUM + 1;
    cactus->pos_x = SPAWN_ZONE_WIDTH + rand() % (LCD_WIDTH - SPAWN_ZONE_WIDTH - cactus->width);
    cactus->pos_y = cactus->track * TRACK_HEIGHT;
    cactus->is_active = 1;
  }

  is_first_frame = 1;
}

void update_scene(){
  if(!frame_update_flag){
    return;
  }
  frame_update_flag = 0;

  Object* bird;
  for(int i = BIRD_ADDR; i < BIRD_ADDR + BIRD_MAX_COUNT; i++){
    bird = objects[i];
    if(bird->is_active){
      if(bird->animation_frame == 0){
        bird->image = (uint16_t *)bird_2;
        bird->animation_frame = 1;
      }else{
        bird->image = (uint16_t *)bird_1;
        bird->animation_frame = 0;
      }
    }
  }

  Object* dino = objects[DINO_ADDR];
  dino->last_image = dino->image;
  dino->last_width = dino->width;
  dino->last_height = dino->height;
  dino->last_pos_x = dino->pos_x;
  dino->last_pos_y = dino->pos_y;

  dino->speed_x = (forward_touch_count - backward_touch_count) * 5;
  if(dino->speed_x > 0){
    dino->is_flipped = 0;
  }else if(dino->speed_x < 0){
    dino->is_flipped = 1;
  }

  if(up_flag){
    dino->track = MAX(1, dino->track - 1);
    dino->speed_y = -10;
  }else if(down_flag){
    dino->track = MIN(TRACK_NUM, dino->track + 1);
    dino->speed_y = 10;
  }
  up_flag = 0;
  down_flag = 0;

  if(duck_flag){
    is_ducking = !is_ducking;
    duck_flag = 0;
  }

  jumping_countdown = MAX(0, jumping_countdown - 1);
  if(jumping_countdown > 0){
	  if(jumping_countdown == 1){
		  is_jumping = 0;
	  }
	  if(jumping_countdown < 30 && jumping_countdown >= 27){
		  dino->pos_y = dino->pos_y - 5;
	  }
	  if(jumping_countdown < 3 && jumping_countdown >= 1){
		  dino->pos_y = dino->pos_y + 5;
	  }
  }

  if(jump_flag && !is_jumping){
    is_jumping = 1;
    jumping_countdown = 30;
  }
  jump_flag = 0;

  dino->pos_x = MAX(0, MIN(LCD_WIDTH - dino->width, dino->pos_x + dino->speed_x));
  dino->pos_y = dino->pos_y + dino->speed_y;

  uint8_t is_out_of_range = dino->pos_y - dino->height < 0 || dino->pos_y > LCD_HEIGHT - BUTTON_HEIGHT;
  uint8_t has_collision = 0; 
  uint8_t restart_x = 0;
  for(int i = BIRD_ADDR; i < BIRD_ADDR + BIRD_MAX_COUNT; i++){
    bird = objects[i];
    if(bird->is_active && bird->track == dino->track){
      if(((dino->pos_x >= bird->pos_x && dino->pos_x <= bird->pos_x + bird->width) || (dino->pos_x + dino->width >= bird->pos_x && dino->pos_x + dino->width <= bird->pos_x + bird->width)) && ((dino->pos_y >= bird->pos_y - bird->height && dino->pos_y <= bird->pos_y) || (dino->pos_y - dino->height >= bird->pos_y - bird->height && dino->pos_y - dino->height <= bird->pos_y)) && !is_ducking){
        restart_x = MAX(0, bird->pos_x - dino->width - 1);
        has_collision = 1;
        break;
      }
    }
  }
  for(int i = CACTUS_ADDR; i < CACTUS_ADDR + CACTUS_MAX_COUNT; i++){
    Object* cactus = objects[i];
    if(cactus->is_active && cactus->track == dino->track){
      if(((dino->pos_x >= cactus->pos_x && dino->pos_x <= cactus->pos_x + cactus->width) || (dino->pos_x + dino->width >= cactus->pos_x && dino->pos_x + dino->width <= cactus->pos_x + cactus->width)) && ((dino->pos_y >= cactus->pos_y - cactus->height && dino->pos_y <= cactus->pos_y) || (dino->pos_y - dino->height >= cactus->pos_y - cactus->height && dino->pos_y - dino->height <= cactus->pos_y)) && !is_jumping){
        restart_x = MAX(0, cactus->pos_x - dino->width - 1);
        has_collision = 1;
        break;
      }
    }
  }

  if(is_out_of_range || has_collision){
    if(has_collision){
      dino->pos_x = restart_x;
    }
    is_ducking = 0;
    is_jumping = 0;
    jumping_countdown = 0;
    dino->pos_y = dino->track * TRACK_HEIGHT;
    dino->speed_x = 0;
    dino->speed_y = 0;
    dino->image = (uint16_t *)dino_dead;
    dino->width = DINO_DEAD_WIDTH;
    dino->height = DINO_DEAD_HEIGHT;
    dino->animation_frame = 0;

    clear_touch_history();
  }else{
    if((dino->speed_x == 0 && dino->speed_y == 0) || dino->last_image == (uint16_t *)dino_dead || is_jumping){
      dino->image = (uint16_t *)dino_mid;
      dino->width = DINO_WIDTH;
      dino->height = DINO_HEIGHT;
      dino->animation_frame = 0;
    }else{
      if(abs(dino->pos_y - dino->track * TRACK_HEIGHT) <= 5){
        dino->speed_y = 0;
        dino->pos_y = dino->track * TRACK_HEIGHT;
      }
      if(is_ducking){
        if(dino->animation_frame == 0){
          dino->image = (uint16_t *)dino_duck_left;
          dino->animation_frame = 1;
        }else{
          dino->image = (uint16_t *)dino_duck_right;
          dino->animation_frame = 0;
        }
        dino->width = DINO_DUCK_WIDTH;
        dino->height = DINO_DUCK_HEIGHT;
      }else{
        if(dino->animation_frame == 0){
          dino->image = (uint16_t *)dino_left;
          dino->animation_frame = 1;
        }else{
          dino->image = (uint16_t *)dino_right;
          dino->animation_frame = 0;
        }
        dino->width = DINO_WIDTH;
        dino->height = DINO_HEIGHT;
      }
    }
  }

  draw_scene();

  if(dino->pos_x + dino->width == LCD_WIDTH && dino->speed_x > 0){
    generate_scene();
  }
}

void draw_scene(){

  if(is_first_frame){
    is_first_frame = 0;

    BACK_COLOR = scene == DAY ? IMG_WHITE : IMG_BLACK;
    POINT_COLOR = scene == DAY ? IMG_BLACK : IMG_WHITE;
    LCD_Fill(0, 0, LCD_WIDTH, LCD_HEIGHT - BUTTON_HEIGHT, BACK_COLOR);

    memset(redraw_window, 0xFF, sizeof(redraw_window));
  }else{
    memset(redraw_window, 0x00, sizeof(redraw_window));

    Object* bird;
    for(int i = BIRD_ADDR; i < BIRD_ADDR + BIRD_MAX_COUNT; i++){
      bird = objects[i];
      if(bird->is_active){
        for(int j = bird->pos_x; j < bird->pos_x + bird->width; j++){
          for(int k = bird->pos_y - bird->height; k < bird->pos_y; k++){
            uint32_t bit = k * LCD_WIDTH + j;
            redraw_window[bit / 8] |= 1 << (bit % 8);
          }
        }
      }
    }

    Object* dino = objects[DINO_ADDR];
    for(int i = dino->last_pos_x; i < dino->last_pos_x + dino->last_width; i++){
      for(int j = dino->last_pos_y - dino->last_height; j < dino->last_pos_y; j++){
        uint32_t bit = j * LCD_WIDTH + i;
        redraw_window[bit / 8] |= 1 << (bit % 8);
      }
    }
    for(int i = dino->pos_x; i < dino->pos_x + dino->width; i++){
      for(int j = dino->pos_y - dino->height; j < dino->pos_y; j++){
        uint32_t bit = j * LCD_WIDTH + i;
        redraw_window[bit / 8] |= 1 << (bit % 8);
      }
    }
  }

  static char time_str[20];
  sprintf(time_str, "Time: %d.%d", (int)(timer / 1000), (int)(timer % 1000));
  POINT_COLOR = timer < MAX_TIME * 1000 ? scene == DAY ? IMG_BLACK : IMG_WHITE : RED;
  LCD_ShowString(0, 0, 320, 16, 16, (uint8_t *)time_str);
  POINT_COLOR = scene == DAY ? IMG_BLACK : IMG_WHITE;

  memset(color_bitmap, 0x00, sizeof(color_bitmap));

  Object* object;
  for(int i = 0; i < OBJECT_COUNT; i++){
    object = objects[i];
    if(object->is_active){
      LCD_SetImage(object->pos_x, object->pos_y - object->height, object->width, object->height, object->image, object->is_flipped);
    }
  }

  LCD_DrawWindow();
}

void change_scene(){
  scene = (scene + 1) % SCENE_COUNT;
  is_first_frame = 1;

  Object* star = objects[STAR_ADDR];
  if(scene == DAY){
    star->image = (uint16_t *)sun;
    star->width = SUN_WIDTH;
    star->height = SUN_HEIGHT;
  }else{
    star->image = (uint16_t *)moon;
    star->width = MOON_WIDTH;
    star->height = MOON_HEIGHT;
  }
  star->pos_x = LCD_WIDTH - star->width;
}
/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
