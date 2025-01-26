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
#include "debounce.h"
#include "lcd.h"
#include <string.h>
#include <stdio.h>
#include <math.h>
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */
typedef enum{
  ENCODE_MODE,
  DECODE_MODE
} CalculatorMode; // Calculator working mode
/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
#define ENCODE_MAX_LEN 4  // The maximum length of original data
#define DECODE_MAX_LEN 8  // The maximum length of hamming code
#define PARITY_LEN DECODE_MAX_LEN - ENCODE_MAX_LEN  // The number of parity bits
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
extern TIM_HandleTypeDef htim3; // Timer handler
extern Key_HandleTypeDef Key0;  // Key handler (defined in debounce.c, used for input debouncing)
extern Key_HandleTypeDef Key1;
extern Key_HandleTypeDef Key_WKUP;
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */

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
  /* USER CODE BEGIN 2 */
  Debounce_InitKey0(); // Initialize the key debouncing functionality
  Debounce_InitKey1();
  Debounce_InitKeyWKUP();
  HAL_TIM_Base_Start_IT(&htim3);

  POINT_COLOR = BLACK;

  CalculatorMode mode = ENCODE_MODE;

  /* Input buffer */
  uint8_t input_buffer_len = 0;
  uint8_t input_buffer_size = ENCODE_MAX_LEN;
  uint8_t input_buffer[DECODE_MAX_LEN] = {0};             // Input buffer, stores all key inputs

  /* Data Storage */
                                                          // Data Names               || Encode Mode || Decode Mode
  uint8_t original_data[ENCODE_MAX_LEN] = {0};            // Original data            || User Input  || Corrected, from the corrected hamming code
  uint8_t error_data[ENCODE_MAX_LEN] = {0};               // Error data               || Unused      || Uncorrected, straight from input's data bits
  uint8_t hamming_code[DECODE_MAX_LEN] = {0};             // Hamming code             || Generated   || User Input    
  uint8_t corrected_hamming_code[DECODE_MAX_LEN] = {0};   // Corrected hamming code   || Unused      || Corrected after error detection
  uint8_t parity_bits[PARITY_LEN] = {0};                  // Parity bits
  uint8_t error_num = 0;                                  // Error number
  uint8_t error_overall_flag = 0;                         // If the global parity bit is incorrect
  uint8_t error_local_flag = 0;                           // If any of the local parity bits are incorrect
  uint8_t error_bit_pos = 0;                              // The position of the error bit

  /* Flags */
  uint8_t repaint_flag = 0;                               // Repaint only when certain events occur
  uint8_t key0_pressed_flag = 0;
  uint8_t key1_pressed_flag = 0;
  uint8_t key_wkup_pressed_flag = 0;

  // Turn off LEDs
  HAL_GPIO_WritePin(LED0_GPIO_Port, LED0_Pin, GPIO_PIN_SET);
  HAL_GPIO_WritePin(LED1_GPIO_Port, LED1_Pin, GPIO_PIN_SET);

  // Display the welcome message
  LCD_Clear(WHITE);
  LCD_ShowString(45, 70,  200, 24, 24, (uint8_t*) "   Hamming     ");
  LCD_ShowString(40, 100, 200, 24, 24, (uint8_t*) "     Code      ");
  LCD_ShowString(40, 130, 200, 24, 24, (uint8_t*) "  Calculator   ");
  LCD_ShowString(20, 160, 200, 16, 16, (uint8_t*) " By 12212006 Mengxuan Wu ");
  LCD_ShowString(20, 176, 200, 16, 16, (uint8_t*) "Press Any Key to Continue");
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */

    /* Read key press events */
    key0_pressed_flag = Debounce_ReadPress(&Key0);
    key1_pressed_flag = Debounce_ReadPress(&Key1);
    key_wkup_pressed_flag = Debounce_ReadPress(&Key_WKUP);
    repaint_flag = key0_pressed_flag || key1_pressed_flag || key_wkup_pressed_flag;  // Repaint only when key pressed

    /* Working mode switch */
    if (key_wkup_pressed_flag){
      input_buffer_len = 0;
      memset(input_buffer, 0, sizeof(input_buffer));
      if (mode == ENCODE_MODE){
        mode = DECODE_MODE;
        
        // flash once
        for (int i = 0; i < 2; i++){
          HAL_GPIO_TogglePin(LED0_GPIO_Port, LED0_Pin);
          HAL_GPIO_TogglePin(LED1_GPIO_Port, LED1_Pin);
          HAL_Delay(100);
        }
      } else {
        mode = ENCODE_MODE;

        // flash twice
        for (int i = 0; i < 4; i++){
          HAL_GPIO_TogglePin(LED0_GPIO_Port, LED0_Pin);
          HAL_GPIO_TogglePin(LED1_GPIO_Port, LED1_Pin);
          HAL_Delay(100);
        }
      }
    }

    /* Handle input event (Key0 has higher priority) */
    input_buffer_size = mode == ENCODE_MODE ? ENCODE_MAX_LEN : DECODE_MAX_LEN;  // Set input buffer size based on mode
    if (key0_pressed_flag || key1_pressed_flag){
      if (input_buffer_len >= input_buffer_size){
        input_buffer_len = 0; // Clear buffer when full
      }
      if (key0_pressed_flag){
        input_buffer[input_buffer_len] = 0;
        input_buffer_len++;
      } else if (key1_pressed_flag){
        input_buffer[input_buffer_len] = 1;
        input_buffer_len++;
      }
    }

    /* Encode & decode logic */
    if (input_buffer_len == input_buffer_size){ // trigger the calculation when the input buffer is full
      memset(parity_bits, 0, sizeof(parity_bits));
      if (mode == ENCODE_MODE){
        /* Encode mode */
        memcpy(original_data, input_buffer, ENCODE_MAX_LEN * sizeof(uint8_t));
        memset(hamming_code, 0, sizeof(hamming_code));

        hamming_code[3] = original_data[0];
        hamming_code[5] = original_data[1];
        hamming_code[6] = original_data[2];
        hamming_code[7] = original_data[3];

        for (int i = 1; i < DECODE_MAX_LEN; i++){
          for (int j = 1; j < PARITY_LEN; j++){
            if ((i >> (j - 1)) & 1){
              parity_bits[j] ^= hamming_code[i];
            }
          }
        }

        hamming_code[1] = parity_bits[1];
        hamming_code[2] = parity_bits[2];
        hamming_code[4] = parity_bits[3];

        for (int i = 1; i < DECODE_MAX_LEN; i++){
          parity_bits[0] ^= hamming_code[i];
        }

        hamming_code[0] = parity_bits[0];
      }else{
        /* Decode mode */
        memcpy(hamming_code, input_buffer, DECODE_MAX_LEN * sizeof(uint8_t));
        memset(original_data, 0, sizeof(original_data));
        memset(error_data, 0, sizeof(error_data));

        error_data[0] = hamming_code[3];
        error_data[1] = hamming_code[5];
        error_data[2] = hamming_code[6];
        error_data[3] = hamming_code[7];

        for (int i = 0; i < DECODE_MAX_LEN; i++){
          for (int j = 1; j < PARITY_LEN; j++){
            if ((i >> (j - 1)) & 1){
              parity_bits[j] ^= hamming_code[i];
            }
          }
          parity_bits[0] ^= input_buffer[i];
        }

        error_bit_pos = 0;
        error_local_flag = 0;
        error_overall_flag = 0;

        for (int i = 1; i < PARITY_LEN; i++){
          error_bit_pos |= (parity_bits[i] << (i - 1));
        }
        error_local_flag = (error_bit_pos != 0);
        error_overall_flag = (parity_bits[0] != 0);

        if (!error_local_flag && !error_overall_flag){
          // if no error in global and local parity bits, then no error
          error_num = 0;
          memcpy(original_data, error_data, sizeof(error_data));
        } else if (error_overall_flag){
          // if error in global parity bit, then correct it
          error_num = 1;
          memcpy(corrected_hamming_code, hamming_code, sizeof(hamming_code));
          corrected_hamming_code[error_bit_pos] ^= 1;

          original_data[0] = corrected_hamming_code[3];
          original_data[1] = corrected_hamming_code[5];
          original_data[2] = corrected_hamming_code[6];
          original_data[3] = corrected_hamming_code[7];
        } else{
          // if error in local parity bits, but not in global parity bit, then two flips occurred
          error_num = 2;
        }
      }
    }

    /* Repaint */
    if (repaint_flag){
      uint8_t temp_string_arr[50];
      LCD_Clear(WHITE);

      /* Zone 1: working mode */
      if (mode == ENCODE_MODE){
        LCD_ShowString(30, 20, 200, 24, 24, (uint8_t*) "Encoding mode");
      }else{
        LCD_ShowString(30, 20, 200, 24, 24, (uint8_t*) "Decoding mode");
      }

      LCD_DrawLine(0, 50, 240, 50);

      /* Zone 2: original data */
      LCD_ShowString(30, 60, 200, 24, 24, (uint8_t*) "Original data:");
      if (mode == ENCODE_MODE){
        for (int i = 0; i < input_buffer_len; i++){
          LCD_ShowNum(30 + 16 * i, 90, input_buffer[i], 1, 16);
        }
      } else {
        if (input_buffer_len == input_buffer_size){
          if (error_num == 2){
            POINT_COLOR = RED;
            LCD_ShowString(30, 90, 200, 16, 16, (uint8_t*) "Unknown");
            POINT_COLOR = BLACK;
          } else {
            for (int i = 0; i < ENCODE_MAX_LEN; i++){
              LCD_ShowNum(30 + 16 * i, 90, original_data[i], 1, 16);
            }
          }
        }
      }

      LCD_DrawLine(0, 120, 240, 120);

      /* Zone 3: hamming code */
      LCD_ShowString(30, 130, 200, 24, 24, (uint8_t*) "Hamming code:");
      if (mode == ENCODE_MODE){
        if (input_buffer_len == input_buffer_size){
          for (int i = 0; i < DECODE_MAX_LEN; i++){
            LCD_ShowNum(30 + 16 * i, 160, hamming_code[i], 1, 16);
          }
        }
      } else {
        for (int i = 0; i < input_buffer_len; i++){
          LCD_ShowNum(30 + 16 * i, 160, input_buffer[i], 1, 16);
        }
        if (input_buffer_len == input_buffer_size){
          if (error_num == 1){
            POINT_COLOR = RED;
            LCD_DrawRectangle(25 + 16 * error_bit_pos, 160, 25 + 16 * (error_bit_pos + 1), 176);
            POINT_COLOR = BLACK;
          }
          sprintf((char *)temp_string_arr, "with %d parity bits", (int) PARITY_LEN);
          LCD_ShowString(30, 180, 200, 16, 16, temp_string_arr);
        }
      }

      LCD_DrawLine(0, 200, 240, 200);

      /* Zone 4: extra info */
      if (input_buffer_len == input_buffer_size){
        if (mode == ENCODE_MODE){
          sprintf((char *)temp_string_arr, "P_overall: %d", (int) parity_bits[0]);
          LCD_ShowString(30, 210, 200, 16, 16, temp_string_arr);

          for (int i = 1; i < PARITY_LEN; i++){
            sprintf((char *)temp_string_arr, "P_%d: %d", (int) pow(2, i - 1), (int)   parity_bits[i]);
            LCD_ShowString(30 + 120 * (i % 2), 210 + 16 * (i / 2), 200, 16, 16,   temp_string_arr);
          }
        } else {
          sprintf((char *)temp_string_arr, "C_overall: %d", (int) parity_bits[0]);
          LCD_ShowString(30, 210, 200, 16, 16, temp_string_arr);

          for (int i = 1; i < PARITY_LEN; i++){
            sprintf((char *)temp_string_arr, "C_%d: %d", (int) pow(2, i - 1), (int)   parity_bits[i]);
            LCD_ShowString(30 + 120 * (i % 2), 210 + 16 * (i / 2), 200, 16, 16,   temp_string_arr);
          }

          uint8_t error_info_y_pos = 210 + 16 * ((PARITY_LEN - 1) / 2);

          if (error_num == 0){
            LCD_ShowString(30, error_info_y_pos + 16, 200, 16, 16, (uint8_t*) "No error is found");
          } else if (error_num == 1){
            LCD_ShowString(30, error_info_y_pos + 16, 200, 16, 16, (uint8_t*) "One error is found"); 
            sprintf((char *)temp_string_arr, "in bit %d", (int) error_bit_pos);
            LCD_ShowString(30, error_info_y_pos + 32, 200, 16, 16, temp_string_arr);
            LCD_ShowString(30, error_info_y_pos + 48, 200, 16, 16, (uint8_t*) "The error data is: ");
            for (int i = 0; i < ENCODE_MAX_LEN; i++){
              LCD_ShowNum(30 + 16 * i, error_info_y_pos + 64, error_data[i], 1, 16);
            }
          } else {
            LCD_ShowString(30, error_info_y_pos + 16, 200, 16, 16, (uint8_t*) "Two errors are found");
            LCD_ShowString(30, error_info_y_pos + 32, 200, 16, 16, (uint8_t*) "Unable to decode");
            LCD_ShowString(30, error_info_y_pos + 48, 200, 16, 16, (uint8_t*) "The error data is: ");
            for (int i = 0; i < ENCODE_MAX_LEN; i++){
              LCD_ShowNum(30 + 16 * i, error_info_y_pos + 64, error_data[i], 1, 16);
            }
          }
        }
      }
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
