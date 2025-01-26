/**
  ******************************************************************************
  * @file    debounce.h
  * @brief   This file contains the function prototypes and data structures 
  *          for debouncing a single GPIO key using STM32 HAL.
  ******************************************************************************
  */

#ifndef DEBOUNCE_H
#define DEBOUNCE_H

#include "stm32f1xx_hal.h"

/**
  * @brief  Macro to check if the key active level is valid.
  */
#define IS_KEY_ACTIVE_LEVEL(LEVEL) (((LEVEL) == KEY_ACTIVE_LOW) || ((LEVEL) == KEY_ACTIVE_HIGH))

/**
  * @brief  Enum for key active level.
  *         Defines whether the key is active-high or active-low.
  */
typedef enum {
    KEY_ACTIVE_LOW,  /*!< Read GPIO_PIN_RESET when key is pressed */
    KEY_ACTIVE_HIGH  /*!< Read GPIO_PIN_SET when key is pressed */
} KeyActiveLevel;

/**
  * @brief  Key Handle Structure Definition
  *         This structure holds information for a single key, including
  *         its GPIO port, pin, current/previous states, and active level 
  *         for debouncing.
  */
typedef struct {
    GPIO_TypeDef* port;          /*!< GPIO Port to which the key is connected */
    uint16_t pin;                /*!< GPIO Pin number for the key */
    KeyActiveLevel active_level; /*!< Specifies if the key is active-high or active-low */
    GPIO_PinState current_state; /*!< Current state of the key (GPIO_PIN_SET/RESET) */
    GPIO_PinState previous_state;/*!< Previous state of the key (GPIO_PIN_SET/RESET) */
    uint8_t press_detected;      /*!< Flag indicating press detection */
    uint8_t release_detected;    /*!< Flag indicating release detection */

    GPIO_TypeDef* led_port;      // Optional LED GPIO port
    uint16_t led_pin;            // Optional LED GPIO pin
    uint8_t led_enabled;         // Flag indicating if LED control is enabled
} Key_HandleTypeDef;

/* Predefined keys */
extern Key_HandleTypeDef Key_WKUP;
extern Key_HandleTypeDef Key0;
extern Key_HandleTypeDef Key1;

/**
  * @brief  Initializes the debounce functionality for a specific key.
  * @param  key: Pointer to the key handle structure.
  * @param  port: GPIO Port for the key.
  * @param  pin: GPIO Pin number for the key.
  * @param  active_level: Indicates if the key is active-high or active-low.
  * @param  led_port: Optional LED GPIO port. Pass NULL if not used.
  * @param  led_pin: Optional LED GPIO pin. Pass 0 if not used.
  * @retval None
  */
void Debounce_Init(Key_HandleTypeDef* key, GPIO_TypeDef* port, uint16_t pin, KeyActiveLevel active_level, GPIO_TypeDef* led_port, uint16_t led_pin);

/**
  * @brief  Updates the key state and checks for press/release detection.
  *         This function should be called periodically (e.g., from a timer 
  *         interrupt) to update the key's current state and detect press 
  *         or release events.
  * @param  key: Pointer to the key handle structure.
  * @retval None
  */
void Debounce_Update(Key_HandleTypeDef* key);

/**
  * @brief  Reads the press detection flag for the key.
  * @param  key: Pointer to the key handle structure.
  * @retval 1 if a press is detected, 0 otherwise.
  */
uint8_t Debounce_ReadPress(Key_HandleTypeDef* key);

/**
  * @brief  Reads the release detection flag for the key.
  * @param  key: Pointer to the key handle structure.
  * @retval 1 if a release is detected, 0 otherwise.
  */
uint8_t Debounce_ReadRelease(Key_HandleTypeDef* key);

/**
  * @brief  Initializes the predefined key Key_WKUP.
  * @retval None
  */
void Debounce_InitKeyWKUP(void);

/**
  * @brief  Initializes the predefined key Key0 and binds it with Led0.
  * @retval None
  */
void Debounce_InitKey0(void);

/**
  * @brief  Initializes the predefined key Key1 and binds it with Led1.
  * @retval None
  */
void Debounce_InitKey1(void);

#endif // DEBOUNCE_H
