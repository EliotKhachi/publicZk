# Use STM32 HAL libraries to read and write data via I2C

HAL I2C Master Transmit/Receive functions are used to write data to and read data from slave devices that have a single register for R/W, respectively. 
```
I2C_HandleTypeDef hi2c1; // auto-generated (I2C object handler)

HAL_StatusTypeDef ret; // declare an object of the same return type as the HAL I2C functions to catch errors

// write config to device's config register
ret = HAL_I2C_Master_Transmit(&hi2c1, (7_bit_slave_address << 1), &config, sizeof(&config), time_out_duration_in_ms)
if (ret != HAL_OK) return ret;

// record data from device's read register
ret = HAL_I2C_Master_Receive(&hi2c1, (7_bit_slave_address << 1 | 0x01), record_data, sizeof(record_data), time_out_duration_in_ms) // where record_data is an array of bytes
if (ret != HAL_OK) return ret;
```
In these cases, you do not need to specify the register addresses as a function parameter.  

Left-shifting the 7-bit slave address puts a 0 at the LSB of the address byte, telling the slave that the master wishes to write to it.
An address byte with a 1 as the LSB tells the slave that the master wishes to read from it.

## Tags
#STM32
