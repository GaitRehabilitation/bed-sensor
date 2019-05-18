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

/*
 * Number of RGB LEDs in the LED strip, adjust as needed.
 */
#if defined(CONFIG_WS2812_STRIP)
#define STRIP_DEV_NAME DT_WORLDSEMI_WS2812_0_LABEL
#else
#define STRIP_DEV_NAME CONFIG_WS2812B_SW_NAME
#endif

#define DELAY_TIME K_MSEC(40)

static const struct led_rgb colors[] = {
	{ .r = 0x4, .g = 0x00, .b = 0x00, }, /* red */
	{ .r = 0x00, .g = 0x4, .b = 0x00, }, /* green */
	{ .r = 0x00, .g = 0x00, .b = 0x4, }, /* blue */
};

static const struct led_rgb black = {
	.r = 0x00,
	.g = 0x00,
	.b = 0x00,
};

struct led_rgb strip_colors[1];



void main(void)
{
	struct device *strip;
	size_t i, time;

	strip = device_get_binding(STRIP_DEV_NAME);
	if (strip) {
		LOG_INF("Found LED strip device %s", STRIP_DEV_NAME);
	} else {
		LOG_ERR("LED strip device %s not found", STRIP_DEV_NAME);
		return;
	}

	/*
	 * Display a pattern that "walks" the three primary colors
	 * down the strip until it reaches the end, then starts at the
	 * beginning. This has the effect of moving it around in a
	 * circle in the case of rings of pixels.
	 */
	LOG_INF("Displaying pattern on strip");
	time = 0;
	while (1) {
		strip_colors[0].r = (uint8_t) (sinf((time + 3.0f) * .1f) * 10.0f);
		strip_colors[0].g = (uint8_t) (cosf((time + 3.0f) * .1f) * 10.0f);
		strip_colors[0].b = (uint8_t) (sinf(time * .1f) * 10.0f);
		
		// memcpy(&strip_colors[0], &colors[time % 3], sizeof(strip_colors[0]));
		led_strip_update_rgb(strip, strip_colors, 1);
		k_sleep(DELAY_TIME);
		time++;
	}
}
