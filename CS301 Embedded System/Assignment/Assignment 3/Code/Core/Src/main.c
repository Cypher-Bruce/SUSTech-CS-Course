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
#include "usart.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "stdio.h"
#include "lcd.h"
#include "debounce.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */
typedef enum{
  SIZE_NORMAL = 1,
  SIZE_DOUBLE = 2,
  SIZE_TRIPLE = 3
}FrameSize;

typedef enum{
  ON,
  OFF
}SystemState;

typedef enum{
  NORMAL = 1,
  FAST = 2,
  SLOW = 3
}SpeedMode;
/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
#define FRAME_HEIGHT 45
#define FRAME_WIDTH  60
#define INPUT_BUFFER_SIZE 2
#define FAST_OR_SLOW_MARK 0xAA
#define PLAY_OR_PAUSE_MARK 0xBB
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
extern TIM_HandleTypeDef htim3;
extern UART_HandleTypeDef huart1;
extern Key_HandleTypeDef Key0;  // Key handler (defined in debounce.c, used for input debouncing)
extern Key_HandleTypeDef Key1;
extern Key_HandleTypeDef Key_WKUP;

extern uint16_t rxBuffer[1];
extern uint16_t txBuffer[1];
extern uint16_t *front_buffer;
extern uint16_t *middle_buffer;
extern uint8_t frame_ready_flag;

extern uint16_t time_count;
extern uint8_t time_ready_flag;

SystemState system_state = ON;
FrameSize frame_size = SIZE_NORMAL;
SpeedMode speed_mode = NORMAL;
PlayState play_state = PLAY;

uint8_t key0_pressed_flag = 0;
uint8_t key1_pressed_flag = 0;
uint8_t key_wkup_pressed_flag = 0;

uint8_t str_buffer[50];
uint8_t input_buffer[INPUT_BUFFER_SIZE];
uint8_t input_count = 0;
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */
void LCD_ShowPic(uint16_t x, uint16_t y, uint16_t column, uint16_t row, uint16_t *pic);
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
  LCD_Init();
  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_TIM3_Init();
  MX_USART1_UART_Init();
  /* USER CODE BEGIN 2 */
  Debounce_InitKey0(); // Initialize the key debouncing functionality
  Debounce_InitKey1();
  Debounce_InitKeyWKUP();
  HAL_TIM_Base_Start_IT(&htim3);
  HAL_UART_Receive_IT(&huart1, (uint8_t *)rxBuffer, 2);

  LCD_ShowString(0, 270, 240, 24, 24, (uint8_t*) "Time: 0.0 s");
  LCD_ShowString(0, 294, 120, 24, 24, (uint8_t*) "Input: ");
  LCD_ShowString(120, 294, 120, 24, 24, (uint8_t*) "  NORMAL");
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
    if (system_state == OFF){
      continue;
    }

    key0_pressed_flag = Debounce_ReadPress(&Key0);
    key1_pressed_flag = Debounce_ReadPress(&Key1);
    key_wkup_pressed_flag = Debounce_ReadPress(&Key_WKUP);

    if (key_wkup_pressed_flag) {
      system_state = OFF;
      LCD_Clear(WHITE);
      LCD_ShowString(0, 130, 240, 24, 24, (uint8_t*) "     SYSTEM OFF     ");
      continue;
    }

    if (key0_pressed_flag || key1_pressed_flag) {
      if (key0_pressed_flag) {
        input_buffer[input_count] = 0;
        input_count++;
      } else if (key1_pressed_flag) {
        input_buffer[input_count] = 1;
        input_count++;
      }

      if (input_count == 1) {
        sprintf((char *)str_buffer, "Input: %d ", input_buffer[0]);
        LCD_ShowString(0, 294, 120, 24, 24, str_buffer);
      }else if (input_count == 2) {
        sprintf((char *)str_buffer, "Input: %d%d", input_buffer[0], input_buffer[1]);
        LCD_ShowString(0, 294, 120, 24, 24, str_buffer);
      }
    }

    if (input_count == INPUT_BUFFER_SIZE) {
      uint16_t opcode = (input_buffer[0] << 1) | input_buffer[1];
      switch (opcode) {
        case 0:
          switch (frame_size) {
            case SIZE_NORMAL:
              frame_size = SIZE_DOUBLE;
              break;
            case SIZE_DOUBLE:
              frame_size = SIZE_TRIPLE;
              break;
            case SIZE_TRIPLE:
              frame_size = SIZE_NORMAL;
              break;
            }
          LCD_Fill(0, 0, 240, 135, WHITE);
          break;
        case 1:
          LCD_Fill(0, 135, 240, 270, WHITE);
          LCD_ShowPic(0, 135, FRAME_WIDTH, FRAME_HEIGHT, front_buffer);
          break;
        case 2:
          switch (speed_mode) {
            case NORMAL:
              speed_mode = FAST;
              LCD_ShowString(120, 294, 120, 24, 24, (uint8_t*) "  FAST  ");
              break;
            case FAST:
              speed_mode = SLOW;
              LCD_ShowString(120, 294, 120, 24, 24, (uint8_t*) "  SLOW  ");
              break;
            case SLOW:
              speed_mode = NORMAL;
              LCD_ShowString(120, 294, 120, 24, 24, (uint8_t*) "  NORMAL");
              break;
          }
          txBuffer[0] = FAST_OR_SLOW_MARK << 8 | speed_mode;
          HAL_UART_Transmit_IT(&huart1, (uint8_t *)txBuffer, 2);
          break;
        case 3:
          switch (play_state) {
            case PLAY:
              play_state = PAUSE;
              LCD_ShowString(200, 0, 24, 24, 24, (uint8_t*) "P");
              LCD_ShowString(200, 24, 24, 24, 24, (uint8_t*) "A");
              LCD_ShowString(200, 48, 24, 24, 24, (uint8_t*) "U");
              LCD_ShowString(200, 72, 24, 24, 24, (uint8_t*) "S");
              LCD_ShowString(200, 96, 24, 24, 24, (uint8_t*) "E");
              LCD_ShowString(200, 120, 24, 24, 24, (uint8_t*) "D");
              break;
            case PAUSE:
              play_state = PLAY;
              LCD_Fill(200, 0, 240, 144, WHITE);
              break;
          }
          txBuffer[0] = PLAY_OR_PAUSE_MARK << 8 | play_state;
          HAL_UART_Transmit_IT(&huart1, (uint8_t *)txBuffer, 2);
          break;
      }
      input_count = 0;
      LCD_ShowString(0, 294, 120, 24, 24, (uint8_t*) "Input:   ");
    }

    if (frame_ready_flag) {
      LCD_ShowPic(0, 0, FRAME_WIDTH, FRAME_HEIGHT, front_buffer);
      uint16_t *temp = front_buffer;
      front_buffer = middle_buffer;
      middle_buffer = temp;
      frame_ready_flag = 0;
    }

    if (time_ready_flag) {
      sprintf((char *)str_buffer, "Time: %d.%d s", time_count / 10, time_count % 10);
      LCD_ShowString(0, 270, 240, 24, 24, str_buffer);
      time_ready_flag = 0;
    }
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
void LCD_ShowPic(uint16_t x, uint16_t y, uint16_t column, uint16_t row, uint16_t *pic) {
  for (uint16_t j = 0; j < row; j++) {
    for (uint16_t i = 0; i < column; i++) {
      for (uint16_t m = 0; m < frame_size; m++) {
        for (uint16_t n = 0; n < frame_size; n++) {
          LCD_Fast_DrawPoint(x + i * frame_size + m, y + j * frame_size + n, *pic);
        }
      }
      pic++;
    }
  }
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
