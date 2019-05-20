
#ifndef SMART_UP_NEO_PIXEL__h
#define SMART_UP_NEO_PIXEL__h

#if defined(CONFIG_WS2812_STRIP)
	#define STRIP_NAME DT_WORLDSEMI_WS2812_0_LABEL
#else
	#define STRIP_NAME CONFIG_WS2812B_SW_NAME
#endif

#include <logging/log.h>
#include <zephyr.h>
#include <led_strip.h>

struct led_rgb neo_pixel_color[1];
void set_pixel_color(uint8_t r,uint8_t g, uint8_t b){
    struct device *dev = device_get_binding(STRIP_NAME);
	if (dev) {
		LOG_INF("Found LED strip device %s", STRIP_NAME);
	} else {
		LOG_ERR("LED strip device %s not found", STRIP_NAME);
		return;
	}
	neo_pixel_color[0].r = r;
	neo_pixel_color[0].g = g;
	neo_pixel_color[0].b = b;
	led_strip_update_rgb(dev, neo_pixel_color, 1);
}

#endif