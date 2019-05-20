/*
 * Copyright (c) 2017 Linaro Limited
 * Copyright (c) 2018 Intel Corporation
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <errno.h>
#include <string.h>

#define LOG_LEVEL 4
#include <logging/log.h>
LOG_MODULE_REGISTER(main);

#include <zephyr.h>
#include <led_strip.h>
#include <device.h>
#include <spi.h>
#include <misc/util.h>
#include <math.h>

#include <pwm.h>
#include <misc/util.h>


#define PWM_DRIVER DT_NORDIC_NRF_PWM_BUZZER_LABEL
#define PWM_CHANNEL DT_NORDIC_NRF_PWM_BUZZER_CH0_PIN

#define PWM_PERIOD (USEC_PER_SEC / 50U)
#define PULSE_WIDTH 500


void main(void)
{
	struct device *pwm_dev;
	pwm_dev = device_get_binding(PWM_DRIVER);
	if (!pwm_dev) {
		printk("Cannot find %s!\n", PWM_DRIVER);
		return;
	}


	size_t time;
	while (1) {
		if (pwm_pin_set_usec(pwm_dev, PWM_CHANNEL,PWM_PERIOD, PULSE_WIDTH + (unsigned)(sinf(time * .1f) * 500))) {
			printk("pwm pin set fails\n");
			return;
		}
		time += 1;
		k_sleep(MSEC_PER_SEC/10U);
	}
}
