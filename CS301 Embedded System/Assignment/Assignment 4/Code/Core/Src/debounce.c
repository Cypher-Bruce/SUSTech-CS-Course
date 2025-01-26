/**
  ******************************************************************************
  * @file    debounce.c
  * @brief   This file implements the debouncing functionality for GPIO keys.
  ******************************************************************************
  */

#include "debounce.h"

/* Instances of the predefined keys */
Key_HandleTypeDef Key_WKUP;
Key_HandleTypeDef Key0;
Key_HandleTypeDef Key1;

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
void Debounce_Init(Key_HandleTypeDef* key, GPIO_TypeDef* port, uint16_t pin, KeyActiveLevel active_level, GPIO_TypeDef* led_port, uint16_t led_pin) {
    assert_param(IS_GPIO_ALL_INSTANCE(port));
    assert_param(IS_GPIO_PIN(pin));
    assert_param(IS_KEY_ACTIVE_LEVEL(active_level));

    key->port = port;
    key->pin = pin;
    key->active_level = active_level;
    key->current_state = HAL_GPIO_ReadPin(port, pin);  // Initialize current state
    key->previous_state = key->current_state;
    key->press_detected = 0;
    key->release_detected = 0;

    // LED initialization (optional)
    if (led_port != NULL && IS_GPIO_ALL_INSTANCE(led_port) && IS_GPIO_PIN(led_pin)) {
        key->led_port = led_port;
        key->led_pin = led_pin;
        key->led_enabled = 1;  // Enable LED control
    } else {
        key->led_port = NULL;
        key->led_pin = 0;
        key->led_enabled = 0;  // Disable LED control
    }
}

/**
  * @brief  Updates the key state and checks for press/release detection.
  *         This function should be called periodically (e.g., from a timer 
  *         interrupt) to update the key's current state and detect press 
  *         or release events.
  * @param  key: Pointer to the key handle structure.
  * @retval None
  */
void Debounce_Update(Key_HandleTypeDef* key) {
    assert_param(IS_GPIO_ALL_INSTANCE(key->port));
    assert_param(IS_GPIO_PIN(key->pin));
    assert_param(IS_KEY_ACTIVE_LEVEL(key->active_level));

    key->current_state = HAL_GPIO_ReadPin(key->port, key->pin);  // Read current state

    uint8_t rising_edge = (key->current_state == GPIO_PIN_SET && key->previous_state == GPIO_PIN_RESET);
    uint8_t falling_edge = (key->current_state == GPIO_PIN_RESET && key->previous_state == GPIO_PIN_SET);

    if (key->active_level == KEY_ACTIVE_HIGH) {
        key->press_detected = rising_edge;
        key->release_detected = falling_edge;
    } else {
        key->press_detected = falling_edge;
        key->release_detected = rising_edge;
    }

    // Handle LED control if enabled
    if (key->led_enabled) {
        if (key->press_detected) {
            HAL_GPIO_WritePin(key->led_port, key->led_pin, GPIO_PIN_RESET);  // Turn LED on
        } else if (key->release_detected) {
            HAL_GPIO_WritePin(key->led_port, key->led_pin, GPIO_PIN_SET);  // Turn LED off
        }
    }

    // Update previous state for next comparison
    key->previous_state = key->current_state;
}

/**
  * @brief  Reads the press detection flag for the key.
  *         Clears the flag after reading.
  * @param  key: Pointer to the key handle structure.
  * @retval 1 if a press is detected, 0 otherwise.
  */
uint8_t Debounce_ReadPress(Key_HandleTypeDef* key) {
    uint8_t press = key->press_detected;
    key->press_detected = 0;  // Clear the flag after reading
    return press;
}

/**
  * @brief  Reads the release detection flag for the key.
  *         Clears the flag after reading.
  * @param  key: Pointer to the key handle structure.
  * @retval 1 if a release is detected, 0 otherwise.
  */
uint8_t Debounce_ReadRelease(Key_HandleTypeDef* key) {
    uint8_t release = key->release_detected;
    key->release_detected = 0;  // Clear the flag after reading
    return release;
}

/**
  * @brief  Initializes the predefined key Key_WKUP.
  * @retval None
  */
void Debounce_InitKeyWKUP(void){
    Debounce_Init(&Key_WKUP, GPIOA, GPIO_PIN_0, KEY_ACTIVE_HIGH, NULL, 0);
}

/**
  * @brief  Initializes the predefined key Key0.
  * @retval None
  */
void Debounce_InitKey0(void){
    Debounce_Init(&Key0, GPIOC, GPIO_PIN_5, KEY_ACTIVE_LOW, GPIOA, GPIO_PIN_8);
}

/**
  * @brief  Initializes the predefined key Key1.
  * @retval None
  */
void Debounce_InitKey1(void){
    Debounce_Init(&Key1, GPIOA, GPIO_PIN_15, KEY_ACTIVE_LOW, GPIOD, GPIO_PIN_2);
}
