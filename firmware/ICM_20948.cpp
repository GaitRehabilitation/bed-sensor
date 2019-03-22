//
// Created by michaelpollind on 3/21/19.
//

#include "ICM_20948.h"



void ICM_20948::_switchBank(Bank bank){
   //WhoAmI Register address.
   char reg = REG_BANK_SEL;
   char selected = (bank << 4);
   _i2c.write(_address, &reg, 1);
   _i2c.write(_address,&selected,1);
}



ICM_20948::ICM_20948(PinName sda, PinName scl, uint8_t address): _i2c(sda,scl),_address(address) {
}
