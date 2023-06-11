# Communicate with any slave device using I2C on STM32 with HAL

Most, if not all, STM32 microcontrollers can establish at least one I2C bus, giving you the ability to read/write data among 128 devices. [I2C Communication](../202111020424/README.md)  


**Step 1:** [Establish an I2C Bus on your STM32 Microcontroller](../202306112116/README.md)

**Step 2:** Familiarize yourself with your slave device(s) 
1. What is your device's 7-bit or 8-bit address?  
2. What do you need to configure on your device before using it? I.e. what registers do you need to write to for configuration settings such as waking it up, setting a sample rate speed, etc.?   
3. 
**Step 3:** Use HAL libraries to read and write data via I2C.  

HAL I2C Master Transmit/Receive functions are used with slave devices that have a single register for R/W, respectively. In these cases, you do not need to specify the register addresses as a function parameter.   
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
Left-shifting the 7-bit slave address puts a 0 at the LSB of the address byte, telling the slave that the master wishes to write to it.  
An address byte with a 1 as the LSB tells the slave that the master wishes to read from it.  

---
HAL I2C Mem Read/Write functions are used with slave devices that have multiple registers. With these devices, you need to specify the register address you are referring to as a function parameter.  
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

## References
[Matej Blagsic Github Example](https://github.com/prtzl/Embedded_videos/tree/master/026_HAL-I2C)

## Tags
#STM32 #embeddedSystems
