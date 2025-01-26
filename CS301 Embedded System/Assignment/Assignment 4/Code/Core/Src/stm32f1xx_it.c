/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    stm32f1xx_it.c
  * @brief   Interrupt Service Routines.
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
#include "stm32f1xx_it.h"
/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "touch.h"
#include "stdlib.h"
#include "debounce.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN TD */

/* USER CODE END TD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
#define CLOCK_PERIOD 10 // 10ms timer
#define TOUCH_HISTORY_SIZE 100
#define FRAME_RATE 10
#define TIMER_PER_FRAME (1000 / FRAME_RATE)
#define TIMER_PER_KEY_UPDATE 100
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN PV */
uint8_t screen_touched_flag = 0;
uint16_t src_x, src_y, dest_x, dest_y;
uint64_t timer = 0;
uint64_t forward_touch_history[TOUCH_HISTORY_SIZE] = {0};
uint8_t forward_head = 0;
uint8_t forward_tail = 0;
uint8_t forward_touch_count = 0;
uint64_t backward_touch_history[TOUCH_HISTORY_SIZE] = {0};
uint8_t backward_head = 0;
uint8_t backward_tail = 0;
uint8_t backward_touch_count = 0;

uint8_t frame_update_flag = 1;

uint8_t jump_flag = 0;
uint8_t duck_flag = 0;
uint8_t up_flag = 0;
uint8_t down_flag = 0;

extern Key_HandleTypeDef Key0;
extern Key_HandleTypeDef Key1;
extern Key_HandleTypeDef Key_WKUP;
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/* External variables --------------------------------------------------------*/
extern TIM_HandleTypeDef htim3;
/* USER CODE BEGIN EV */

/* USER CODE END EV */

/******************************************************************************/
/*           Cortex-M3 Processor Interruption and Exception Handlers          */
/******************************************************************************/
/**
  * @brief This function handles Non maskable interrupt.
  */
void NMI_Handler(void)
{
  /* USER CODE BEGIN NonMaskableInt_IRQn 0 */

  /* USER CODE END NonMaskableInt_IRQn 0 */
  /* USER CODE BEGIN NonMaskableInt_IRQn 1 */
   while (1)
  {
  }
  /* USER CODE END NonMaskableInt_IRQn 1 */
}

/**
  * @brief This function handles Hard fault interrupt.
  */
void HardFault_Handler(void)
{
  /* USER CODE BEGIN HardFault_IRQn 0 */

  /* USER CODE END HardFault_IRQn 0 */
  while (1)
  {
    /* USER CODE BEGIN W1_HardFault_IRQn 0 */
    /* USER CODE END W1_HardFault_IRQn 0 */
  }
}

/**
  * @brief This function handles Memory management fault.
  */
void MemManage_Handler(void)
{
  /* USER CODE BEGIN MemoryManagement_IRQn 0 */

  /* USER CODE END MemoryManagement_IRQn 0 */
  while (1)
  {
    /* USER CODE BEGIN W1_MemoryManagement_IRQn 0 */
    /* USER CODE END W1_MemoryManagement_IRQn 0 */
  }
}

/**
  * @brief This function handles Prefetch fault, memory access fault.
  */
void BusFault_Handler(void)
{
  /* USER CODE BEGIN BusFault_IRQn 0 */

  /* USER CODE END BusFault_IRQn 0 */
  while (1)
  {
    /* USER CODE BEGIN W1_BusFault_IRQn 0 */
    /* USER CODE END W1_BusFault_IRQn 0 */
  }
}

/**
  * @brief This function handles Undefined instruction or illegal state.
  */
void UsageFault_Handler(void)
{
  /* USER CODE BEGIN UsageFault_IRQn 0 */

  /* USER CODE END UsageFault_IRQn 0 */
  while (1)
  {
    /* USER CODE BEGIN W1_UsageFault_IRQn 0 */
    /* USER CODE END W1_UsageFault_IRQn 0 */
  }
}

/**
  * @brief This function handles System service call via SWI instruction.
  */
void SVC_Handler(void)
{
  /* USER CODE BEGIN SVCall_IRQn 0 */

  /* USER CODE END SVCall_IRQn 0 */
  /* USER CODE BEGIN SVCall_IRQn 1 */

  /* USER CODE END SVCall_IRQn 1 */
}

/**
  * @brief This function handles Debug monitor.
  */
void DebugMon_Handler(void)
{
  /* USER CODE BEGIN DebugMonitor_IRQn 0 */

  /* USER CODE END DebugMonitor_IRQn 0 */
  /* USER CODE BEGIN DebugMonitor_IRQn 1 */

  /* USER CODE END DebugMonitor_IRQn 1 */
}

/**
  * @brief This function handles Pendable request for system service.
  */
void PendSV_Handler(void)
{
  /* USER CODE BEGIN PendSV_IRQn 0 */

  /* USER CODE END PendSV_IRQn 0 */
  /* USER CODE BEGIN PendSV_IRQn 1 */

  /* USER CODE END PendSV_IRQn 1 */
}

/**
  * @brief This function handles System tick timer.
  */
void SysTick_Handler(void)
{
  /* USER CODE BEGIN SysTick_IRQn 0 */

  /* USER CODE END SysTick_IRQn 0 */
  HAL_IncTick();
  /* USER CODE BEGIN SysTick_IRQn 1 */

  /* USER CODE END SysTick_IRQn 1 */
}

/******************************************************************************/
/* STM32F1xx Peripheral Interrupt Handlers                                    */
/* Add here the Interrupt Handlers for the used peripherals.                  */
/* For the available peripheral interrupt handler names,                      */
/* please refer to the startup file (startup_stm32f1xx.s).                    */
/******************************************************************************/

/**
  * @brief This function handles TIM3 global interrupt.
  */
void TIM3_IRQHandler(void)
{
  /* USER CODE BEGIN TIM3_IRQn 0 */

  /* USER CODE END TIM3_IRQn 0 */
  HAL_TIM_IRQHandler(&htim3);
  /* USER CODE BEGIN TIM3_IRQn 1 */

  /* USER CODE END TIM3_IRQn 1 */
}

/* USER CODE BEGIN 1 */
uint8_t touch_valid(uint16_t src_x, uint16_t src_y, uint16_t dest_x, uint16_t dest_y){
  if(abs(src_x - dest_x) <= 30 && abs(src_y - dest_y) <= 30){
    return 0;
  }
  return 1;
}

void clear_touch_history(){
  forward_head = 0;
  forward_tail = 0;
  forward_touch_count = 0;
  backward_head = 0;
  backward_tail = 0;
  backward_touch_count = 0;
}

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  if (htim->Instance==TIM3){
    timer += CLOCK_PERIOD;

    if(timer % TIMER_PER_FRAME == 0){
      frame_update_flag = 1;
    }

    if(timer % TIMER_PER_KEY_UPDATE == 0){
      Debounce_Update(&Key_WKUP);
      Debounce_Update(&Key0);
      Debounce_Update(&Key1);
    }

    while(forward_head != forward_tail && timer - forward_touch_history[forward_tail] > 1000){
      forward_tail = (forward_tail + 1) % TOUCH_HISTORY_SIZE;
      forward_touch_count--;
    }

    while(backward_head != backward_tail && timer - backward_touch_history[backward_tail] > 1000){
      backward_tail = (backward_tail + 1) % TOUCH_HISTORY_SIZE;
      backward_touch_count--;
    }

    tp_dev.scan(0);
    if(tp_dev.sta & TP_PRES_DOWN){
      if(screen_touched_flag == 0){
        screen_touched_flag = 1;
        src_x = tp_dev.x[0];
        src_y = tp_dev.y[0];
      }
      if(tp_dev.x[0] >= 195){
        if(tp_dev.y[0] <= 80){
          down_flag = 1;
        }else if(tp_dev.y[0] <= 160){
          up_flag = 1;
        }else if(tp_dev.y[0] <= 240){
          duck_flag = 1;
        }else{
          jump_flag = 1;
        }
      }
    }else{
      if(screen_touched_flag == 1){
        screen_touched_flag = 0;
        dest_x = tp_dev.x[0];
        dest_y = tp_dev.y[0];

        if(touch_valid(src_x, src_y, dest_x, dest_y)){
          if(src_y > dest_y){
            forward_touch_history[forward_head] = timer;
            forward_head = (forward_head + 1) % TOUCH_HISTORY_SIZE;
            forward_touch_count++;
          }else{
            backward_touch_history[backward_head] = timer;
            backward_head = (backward_head + 1) % TOUCH_HISTORY_SIZE;
            backward_touch_count++;
          }
        }
      }
    }
  }
}
/* USER CODE END 1 */
