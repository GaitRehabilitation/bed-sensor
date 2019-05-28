#ifndef SMART_UP_NEO_BUZZER__h
#define SMART_UP_NEO_BUZZER__h

#include <zephyr.h>
#include <device.h>

#include <pwm.h>
#include <misc/util.h>

#define PWM_DRIVER DT_NORDIC_NRF_PWM_BUZZER_LABEL
#define PWM_CHANNEL DT_NORDIC_NRF_PWM_BUZZER_CH0_PIN

#define PWM_PERIOD (USEC_PER_SEC / 50U)
#define PULSE_WIDTH 500

void set_buzzer_pwm(int pulse_width){
    struct device *pwm_dev;
	pwm_dev = device_get_binding(PWM_DRIVER);
	if (!pwm_dev) {
		printk("Cannot find %s!\n", PWM_DRIVER);
		return;
	}
	if (pwm_pin_set_usec(pwm_dev, PWM_CHANNEL,PWM_PERIOD, pulse_width) {
        printk("pwm pin set fails\n");
        return;
    }
}

#endif