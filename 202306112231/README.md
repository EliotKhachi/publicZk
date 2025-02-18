# HAL I2C Mem Read & Write Functions

```
I2C_HandleTypeDef hi2c1; // auto-generated (I2C object handler)

HAL_StatusTypeDef ret;  // declare an object of the same return type as the HAL I2C functions to catch errors

// write config to one of the device's registers
ret = HAL_I2C_Mem_Write(&hi2c1, (7_bit_slave_address << 1), register_address, sizeof(register_address), &config, sizeof(&config), time_out_duration_in_ms)
if (ret != HAL_OK) return ret;
// record data from one of the device's registers
ret = HAL_I2C_Mem_Read(&hi2c1, (7_bit_slave_address << 1), register_address, sizeof(register_address), record_data, sizeof(record_data), time_out_duration_in_ms) // where record_data is an array of bytes
if (ret != HAL_OK) return ret;

```

## Links
[Use STM32 HAL libraries to read and write data via I2C](../202306112223/README.md) 

## Tags
#STM32
