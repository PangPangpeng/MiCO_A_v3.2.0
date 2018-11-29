MiCO_SDK_MAKEFILES           		+= ./platform/MCU/STM32F4xx/peripherals/libraries/libraries.mk ./platform/MCU/STM32F4xx/peripherals/peripherals.mk ./platform/GCC/GCC.mk ./libraries/utilities/json_c/json_c.mk ./libraries/drivers/sensor/infrared_adc/infrared_adc.mk ./libraries/drivers/sensor/light_adc/light_adc.mk ./libraries/drivers/sensor/APDS9930/APDS9930.mk ./libraries/drivers/sensor/DHT11/DHT11.mk ./libraries/drivers/sensor/BME280/BME280.mk ./libraries/drivers/rgb_led/P9813/P9813.mk ./libraries/drivers/motor/dc_motor/dc_motor.mk ./libraries/drivers/display/VGM128064/VGM128064.mk ././platform/MCU/STM32F4xx/STM32F4xx.mk ./libraries/utilities/utilities.mk ././MiCO/net/LwIP/mico/mico.mk ./libraries/drivers/MiCOKit_EXT/MiCOKit_EXT.mk ./libraries/drivers/keypad/gpio_button/gpio_button.mk ./libraries/drivers/spi_flash/spi_flash.mk ././MiCO/MiCO.mk ./MiCO/Security/TLS/wolfSSL/wolfSSL.mk ./MiCO/net/LwIP/LwIP.mk ./MiCO/RTOS/NoRTOS/NoRTOS.mk ./board/MK3239/MK3239.mk ././bootloader/bootloader.mk
TOOLCHAIN_NAME            		:= GCC
MiCO_SDK_LDFLAGS             		+= -Wl,--gc-sections -Wl,-Os -Wl,--cref -mthumb -mcpu=cortex-m4 -Wl,-A,thumb -mlittle-endian -nostartfiles -Wl,--defsym,__STACKSIZE__=4000 -L ./platform/MCU/STM32F4xx/GCC -L ./board/MK3239 --specs=nano.specs
RESOURCE_CFLAGS					+= -mthumb -mcpu=cortex-m4 -mlittle-endian
MiCO_SDK_LINK_SCRIPT         		+= ././platform/MCU/STM32F4xx/GCC/bootloader.ld
MiCO_SDK_LINK_SCRIPT_CMD    	 	+= -Wl,-T ././platform/MCU/STM32F4xx/GCC/bootloader.ld
MiCO_SDK_PREBUILT_LIBRARIES 	 	+= ./MiCO/Security/TLS/wolfSSL/Lib_wolfSSL.Cortex-M4.GCC.release.a
MiCO_SDK_CERTIFICATES       	 	+= 
MiCO_SDK_PRE_APP_BUILDS      		+= 
MiCO_SDK_LINK_FILES          		+=    $(OUTPUT_DIR)/Modules/board/MK3239/wifi_nvram.o                    $(OUTPUT_DIR)/Modules/./platform/MCU/STM32F4xx/../../Cortex-M4/crt0_GCC.o $(OUTPUT_DIR)/Modules/./platform/MCU/STM32F4xx/../../Cortex-M4/hardfault_handler.o $(OUTPUT_DIR)/Modules/./platform/MCU/STM32F4xx/platform_vector_table.o                    $(OUTPUT_DIR)/Modules/platform/GCC/mem_newlib.o $(OUTPUT_DIR)/Modules/platform/GCC/math_newlib.o $(OUTPUT_DIR)/Modules/platform/GCC/stdio_newlib.o $(OUTPUT_DIR)/Modules/platform/GCC/time_newlib.o $(OUTPUT_DIR)/Modules/platform/GCC/eabi.o    
MiCO_SDK_INCLUDES           	 	+=                                      -I./platform/MCU/STM32F4xx/peripherals/libraries/. -I./platform/MCU/STM32F4xx/peripherals/libraries/STM32F4xx_StdPeriph_Driver/inc -I./platform/MCU/STM32F4xx/peripherals/libraries/../../../Cortex-M4/CMSIS -I./platform/MCU/STM32F4xx/peripherals/. -I./libraries/utilities/json_c/. -I./libraries/drivers/sensor/infrared_adc/. -I./libraries/drivers/sensor/light_adc/. -I./libraries/drivers/sensor/APDS9930/. -I./libraries/drivers/sensor/DHT11/. -I./libraries/drivers/sensor/BME280/. -I./libraries/drivers/rgb_led/P9813/. -I./libraries/drivers/motor/dc_motor/. -I./libraries/drivers/display/VGM128064/. -I././platform/MCU/STM32F4xx/. -I././platform/MCU/STM32F4xx/.. -I././platform/MCU/STM32F4xx/../.. -I././platform/MCU/STM32F4xx/../../include -I././platform/MCU/STM32F4xx/../../GCC -I././platform/MCU/STM32F4xx/../../Cortex-M4 -I././platform/MCU/STM32F4xx/../../Cortex-M4/CMSIS -I././platform/MCU/STM32F4xx/peripherals -I./libraries/utilities/. -I././MiCO/net/LwIP/mico/. -I./libraries/drivers/MiCOKit_EXT/. -I./libraries/drivers/MiCOKit_EXT/.. -I./libraries/drivers/keypad/gpio_button/. -I./libraries/drivers/spi_flash/. -I././MiCO/. -I././MiCO/system -I././MiCO/system/include -I././MiCO/security -I./MiCO/Security/TLS/wolfSSL/. -I./MiCO/RTOS/NoRTOS/. -I./board/MK3239/. -I././bootloader/. -I./include -I./demos/bootloader
MiCO_SDK_DEFINES             		+=               -DUSE_STDPERIPH_DRIVER -D_STM3x_ -D_STM32x_ -DSTM32F412xG -DNETWORK_LwIP=1 -DMXCHIP -DLwIP_VERSION_MAJOR=1 -DLwIP_VERSION_MINOR=4 -DLwIP_VERSION_REVISION=0 -DNO_MICO_RTOS -DHSE_VALUE=26000000 -DCRLF_STDIO_REPLACEMENT -DMICO_NO_WIFI -DBOOTLOADER
COMPONENTS                		:= APP_bootloader Board_MiCOKit_3239 NoRTOS LwIP Lib_wolfSSL MiCO Lib_SPI_Flash_Library_MK3239 Lib_gpio_button_MK3239 Lib_MiCOKit_EXT_MK3239 MiCO_LwIP_Interface Lib_Utilities STM32F4xx Lib_VGM128064_MK3239 Lib_dc_motor_MK3239 Lib_RGB_P9813_MK3239 Sensor_BME280_MK3239 Sensor_DHT11_MK3239 Sensor_APDS9930_MK3239 Sensor_Light_adc_MK3239 Sensor_Infrared_Reflective_MK3239 Lib_JSON_C GCC STM32F4xx_Peripheral_Drivers STM32F4xx_Peripheral_Libraries
BUS                       		:= SDIO
IMAGE_TYPE                		:= ram
NETWORK_FULL              		:= 
RTOS_FULL                 		:= NoRTOS NoRTOS
PLATFORM_DIRECTORY        		:= MK3239
APP_FULL                  		:= bootloader
NETWORK                   		:= 
RTOS                      		:= NoRTOS
PLATFORM                  		:= MK3239
HOST_MCU_FAMILY                  	:= STM32F4xx
USB                       		:= 
APP                       		:= bootloader
HOST_OPENOCD              		:= stm32f4x
JTAG              		        := jlink_swd
HOST_ARCH                 		:= Cortex-M4
NO_BUILD_BOOTLOADER           	:= 
NO_BOOTLOADER_REQUIRED         	:= 
APP_bootloader_LOCATION         := ././bootloader/
Board_MiCOKit_3239_LOCATION         := ./board/MK3239/
NoRTOS_LOCATION         := ./MiCO/RTOS/NoRTOS/
LwIP_LOCATION         := ./MiCO/net/LwIP/
Lib_wolfSSL_LOCATION         := ./MiCO/Security/TLS/wolfSSL/
MiCO_LOCATION         := ././MiCO/
Lib_SPI_Flash_Library_MK3239_LOCATION         := ./libraries/drivers/spi_flash/
Lib_gpio_button_MK3239_LOCATION         := ./libraries/drivers/keypad/gpio_button/
Lib_MiCOKit_EXT_MK3239_LOCATION         := ./libraries/drivers/MiCOKit_EXT/
MiCO_LwIP_Interface_LOCATION         := ././MiCO/net/LwIP/mico/
Lib_Utilities_LOCATION         := ./libraries/utilities/
STM32F4xx_LOCATION         := ././platform/MCU/STM32F4xx/
Lib_VGM128064_MK3239_LOCATION         := ./libraries/drivers/display/VGM128064/
Lib_dc_motor_MK3239_LOCATION         := ./libraries/drivers/motor/dc_motor/
Lib_RGB_P9813_MK3239_LOCATION         := ./libraries/drivers/rgb_led/P9813/
Sensor_BME280_MK3239_LOCATION         := ./libraries/drivers/sensor/BME280/
Sensor_DHT11_MK3239_LOCATION         := ./libraries/drivers/sensor/DHT11/
Sensor_APDS9930_MK3239_LOCATION         := ./libraries/drivers/sensor/APDS9930/
Sensor_Light_adc_MK3239_LOCATION         := ./libraries/drivers/sensor/light_adc/
Sensor_Infrared_Reflective_MK3239_LOCATION         := ./libraries/drivers/sensor/infrared_adc/
Lib_JSON_C_LOCATION         := ./libraries/utilities/json_c/
GCC_LOCATION         := ./platform/GCC/
STM32F4xx_Peripheral_Drivers_LOCATION         := ./platform/MCU/STM32F4xx/peripherals/
STM32F4xx_Peripheral_Libraries_LOCATION         := ./platform/MCU/STM32F4xx/peripherals/libraries/
APP_bootloader_SOURCES          += BootloaderEntrance.c Getline.c menu.c Update_for_OTA.c ymodem.c
Board_MiCOKit_3239_SOURCES          += platform.c wifi_nvram.c
NoRTOS_SOURCES          += rtos.c
LwIP_SOURCES          += mico/mico_socket.c
Lib_wolfSSL_SOURCES          += 
MiCO_SOURCES          += 
Lib_SPI_Flash_Library_MK3239_SOURCES          += spi_flash.c spi_flash_platform.c
Lib_gpio_button_MK3239_SOURCES          += button.c
Lib_MiCOKit_EXT_MK3239_SOURCES          += micokit_ext_mfg.c micokit_ext.c motion_sensor.c temp_hum_sensor.c
MiCO_LwIP_Interface_SOURCES          += 
Lib_Utilities_SOURCES          += AESUtils.c RingBufferUtils.c StringUtils.c LinkListUtils.c SocketUtils.c CheckSumUtils.c HTTPUtils.c TimeUtils.c TLVUtils.c URLUtils.c
STM32F4xx_SOURCES          += ../../Cortex-M4/crt0_GCC.c ../../Cortex-M4/platform_core.c ../../Cortex-M4/hardfault_handler.c ../platform_nsclock.c ../mico_platform_common.c ../wlan_platform_common.c platform_init.c platform_vector_table.c GCC/platform_unhandled_isr.c wlan_bus_driver/wlan_platform.c wlan_bus_driver/wlan_bus_SDIO.c
Lib_VGM128064_MK3239_SOURCES          += AsciiLib.c oled.c
Lib_dc_motor_MK3239_SOURCES          += dc_motor.c
Lib_RGB_P9813_MK3239_SOURCES          += hsb2rgb_led.c rgb_led.c
Sensor_BME280_MK3239_SOURCES          += bme280_user.c bme280.c
Sensor_DHT11_MK3239_SOURCES          += DHT11.c
Sensor_APDS9930_MK3239_SOURCES          += APDS9930.c
Sensor_Light_adc_MK3239_SOURCES          += light_sensor.c
Sensor_Infrared_Reflective_MK3239_SOURCES          += infrared_reflective.c
Lib_JSON_C_SOURCES          += arraylist.c json_debug.c json_object.c json_tokener.c json_util.c linkhash.c printbuf.c
GCC_SOURCES          += mem_newlib.c math_newlib.c stdio_newlib.c time_newlib.c eabi.c
STM32F4xx_Peripheral_Drivers_SOURCES          += platform_adc.c platform_rtc.c platform_gpio.c platform_i2c.c platform_rng.c platform_mcu_powersave.c platform_pwm.c platform_flash.c platform_spi.c platform_uart.c platform_watchdog.c
STM32F4xx_Peripheral_Libraries_SOURCES          += system_stm32f4xx.c STM32F4xx_StdPeriph_Driver/src/misc.c STM32F4xx_StdPeriph_Driver/src/stm32f4xx_adc.c STM32F4xx_StdPeriph_Driver/src/stm32f4xx_can.c STM32F4xx_StdPeriph_Driver/src/stm32f4xx_crc.c STM32F4xx_StdPeriph_Driver/src/stm32f4xx_dac.c STM32F4xx_StdPeriph_Driver/src/stm32f4xx_dbgmcu.c STM32F4xx_StdPeriph_Driver/src/stm32f4xx_dma.c STM32F4xx_StdPeriph_Driver/src/stm32f4xx_exti.c STM32F4xx_StdPeriph_Driver/src/stm32f4xx_flash.c STM32F4xx_StdPeriph_Driver/src/stm32f4xx_gpio.c STM32F4xx_StdPeriph_Driver/src/stm32f4xx_rng.c STM32F4xx_StdPeriph_Driver/src/stm32f4xx_i2c.c STM32F4xx_StdPeriph_Driver/src/stm32f4xx_iwdg.c STM32F4xx_StdPeriph_Driver/src/stm32f4xx_pwr.c STM32F4xx_StdPeriph_Driver/src/stm32f4xx_rcc.c STM32F4xx_StdPeriph_Driver/src/stm32f4xx_rtc.c STM32F4xx_StdPeriph_Driver/src/stm32f4xx_sdio.c STM32F4xx_StdPeriph_Driver/src/stm32f4xx_spi.c STM32F4xx_StdPeriph_Driver/src/stm32f4xx_syscfg.c STM32F4xx_StdPeriph_Driver/src/stm32f4xx_tim.c STM32F4xx_StdPeriph_Driver/src/stm32f4xx_usart.c STM32F4xx_StdPeriph_Driver/src/stm32f4xx_wwdg.c STM32F4xx_StdPeriph_Driver/src/stm32f4xx_fsmc.c STM32F4xx_StdPeriph_Driver/src/stm32f4xx_qspi.c
APP_bootloader_CHECK_HEADERS    += 
Board_MiCOKit_3239_CHECK_HEADERS    += 
NoRTOS_CHECK_HEADERS    += 
LwIP_CHECK_HEADERS    += 
Lib_wolfSSL_CHECK_HEADERS    += 
MiCO_CHECK_HEADERS    += 
Lib_SPI_Flash_Library_MK3239_CHECK_HEADERS    += 
Lib_gpio_button_MK3239_CHECK_HEADERS    += 
Lib_MiCOKit_EXT_MK3239_CHECK_HEADERS    += 
MiCO_LwIP_Interface_CHECK_HEADERS    += 
Lib_Utilities_CHECK_HEADERS    += 
STM32F4xx_CHECK_HEADERS    += 
Lib_VGM128064_MK3239_CHECK_HEADERS    += 
Lib_dc_motor_MK3239_CHECK_HEADERS    += 
Lib_RGB_P9813_MK3239_CHECK_HEADERS    += 
Sensor_BME280_MK3239_CHECK_HEADERS    += 
Sensor_DHT11_MK3239_CHECK_HEADERS    += 
Sensor_APDS9930_MK3239_CHECK_HEADERS    += 
Sensor_Light_adc_MK3239_CHECK_HEADERS    += 
Sensor_Infrared_Reflective_MK3239_CHECK_HEADERS    += 
Lib_JSON_C_CHECK_HEADERS    += 
GCC_CHECK_HEADERS    += 
STM32F4xx_Peripheral_Drivers_CHECK_HEADERS    += 
STM32F4xx_Peripheral_Libraries_CHECK_HEADERS    += 
APP_bootloader_INCLUDES         := 
Board_MiCOKit_3239_INCLUDES         := 
NoRTOS_INCLUDES         := 
LwIP_INCLUDES         := -I./MiCO/net/LwIP/ver1.4.0.rc1 -I./MiCO/net/LwIP/ver1.4.0.rc1/src/include -I./MiCO/net/LwIP/ver1.4.0.rc1/src/include/ipv4
Lib_wolfSSL_INCLUDES         := 
MiCO_INCLUDES         := 
Lib_SPI_Flash_Library_MK3239_INCLUDES         := 
Lib_gpio_button_MK3239_INCLUDES         := 
Lib_MiCOKit_EXT_MK3239_INCLUDES         := 
MiCO_LwIP_Interface_INCLUDES         := 
Lib_Utilities_INCLUDES         := 
STM32F4xx_INCLUDES         := 
Lib_VGM128064_MK3239_INCLUDES         := 
Lib_dc_motor_MK3239_INCLUDES         := 
Lib_RGB_P9813_MK3239_INCLUDES         := 
Sensor_BME280_MK3239_INCLUDES         := 
Sensor_DHT11_MK3239_INCLUDES         := 
Sensor_APDS9930_MK3239_INCLUDES         := 
Sensor_Light_adc_MK3239_INCLUDES         := 
Sensor_Infrared_Reflective_MK3239_INCLUDES         := 
Lib_JSON_C_INCLUDES         := 
GCC_INCLUDES         := 
STM32F4xx_Peripheral_Drivers_INCLUDES         := 
STM32F4xx_Peripheral_Libraries_INCLUDES         := 
APP_bootloader_DEFINES          := 
Board_MiCOKit_3239_DEFINES          := 
NoRTOS_DEFINES          := 
LwIP_DEFINES          := 
Lib_wolfSSL_DEFINES          := 
MiCO_DEFINES          := 
Lib_SPI_Flash_Library_MK3239_DEFINES          := 
Lib_gpio_button_MK3239_DEFINES          := 
Lib_MiCOKit_EXT_MK3239_DEFINES          := 
MiCO_LwIP_Interface_DEFINES          := 
Lib_Utilities_DEFINES          := 
STM32F4xx_DEFINES          := 
Lib_VGM128064_MK3239_DEFINES          := 
Lib_dc_motor_MK3239_DEFINES          := 
Lib_RGB_P9813_MK3239_DEFINES          := 
Sensor_BME280_MK3239_DEFINES          := 
Sensor_DHT11_MK3239_DEFINES          := 
Sensor_APDS9930_MK3239_DEFINES          := 
Sensor_Light_adc_MK3239_DEFINES          := 
Sensor_Infrared_Reflective_MK3239_DEFINES          := 
Lib_JSON_C_DEFINES          := 
GCC_DEFINES          := 
STM32F4xx_Peripheral_Drivers_DEFINES          := 
STM32F4xx_Peripheral_Libraries_DEFINES          := 
APP_bootloader_CFLAGS           :=             -mthumb -mcpu=cortex-m4    -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" -Wno-char-subscripts
Board_MiCOKit_3239_CFLAGS           :=             -mthumb -mcpu=cortex-m4    -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
NoRTOS_CFLAGS           :=             -mthumb -mcpu=cortex-m4    -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
LwIP_CFLAGS           :=             -mthumb -mcpu=cortex-m4    -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
Lib_wolfSSL_CFLAGS           :=             -mthumb -mcpu=cortex-m4    -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
MiCO_CFLAGS           :=             -mthumb -mcpu=cortex-m4    -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
Lib_SPI_Flash_Library_MK3239_CFLAGS           :=             -mthumb -mcpu=cortex-m4    -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
Lib_gpio_button_MK3239_CFLAGS           :=             -mthumb -mcpu=cortex-m4    -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
Lib_MiCOKit_EXT_MK3239_CFLAGS           :=             -mthumb -mcpu=cortex-m4    -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
MiCO_LwIP_Interface_CFLAGS           :=             -mthumb -mcpu=cortex-m4    -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
Lib_Utilities_CFLAGS           :=             -mthumb -mcpu=cortex-m4    -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" -Wno-char-subscripts
STM32F4xx_CFLAGS           :=             -mthumb -mcpu=cortex-m4    -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
Lib_VGM128064_MK3239_CFLAGS           :=             -mthumb -mcpu=cortex-m4    -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" -Wno-missing-braces
Lib_dc_motor_MK3239_CFLAGS           :=             -mthumb -mcpu=cortex-m4    -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
Lib_RGB_P9813_MK3239_CFLAGS           :=             -mthumb -mcpu=cortex-m4    -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
Sensor_BME280_MK3239_CFLAGS           :=             -mthumb -mcpu=cortex-m4    -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
Sensor_DHT11_MK3239_CFLAGS           :=             -mthumb -mcpu=cortex-m4    -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
Sensor_APDS9930_MK3239_CFLAGS           :=             -mthumb -mcpu=cortex-m4    -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
Sensor_Light_adc_MK3239_CFLAGS           :=             -mthumb -mcpu=cortex-m4    -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
Sensor_Infrared_Reflective_MK3239_CFLAGS           :=             -mthumb -mcpu=cortex-m4    -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
Lib_JSON_C_CFLAGS           :=             -mthumb -mcpu=cortex-m4    -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" -Wno-unused-value
GCC_CFLAGS           :=             -mthumb -mcpu=cortex-m4    -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
STM32F4xx_Peripheral_Drivers_CFLAGS           :=             -mthumb -mcpu=cortex-m4    -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
STM32F4xx_Peripheral_Libraries_CFLAGS           :=             -mthumb -mcpu=cortex-m4    -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
APP_bootloader_CXXFLAGS         :=             -mthumb -mcpu=cortex-m4  -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
Board_MiCOKit_3239_CXXFLAGS         :=             -mthumb -mcpu=cortex-m4  -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
NoRTOS_CXXFLAGS         :=             -mthumb -mcpu=cortex-m4  -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
LwIP_CXXFLAGS         :=             -mthumb -mcpu=cortex-m4  -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
Lib_wolfSSL_CXXFLAGS         :=             -mthumb -mcpu=cortex-m4  -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
MiCO_CXXFLAGS         :=             -mthumb -mcpu=cortex-m4  -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
Lib_SPI_Flash_Library_MK3239_CXXFLAGS         :=             -mthumb -mcpu=cortex-m4  -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
Lib_gpio_button_MK3239_CXXFLAGS         :=             -mthumb -mcpu=cortex-m4  -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
Lib_MiCOKit_EXT_MK3239_CXXFLAGS         :=             -mthumb -mcpu=cortex-m4  -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
MiCO_LwIP_Interface_CXXFLAGS         :=             -mthumb -mcpu=cortex-m4  -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
Lib_Utilities_CXXFLAGS         :=             -mthumb -mcpu=cortex-m4  -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
STM32F4xx_CXXFLAGS         :=             -mthumb -mcpu=cortex-m4  -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
Lib_VGM128064_MK3239_CXXFLAGS         :=             -mthumb -mcpu=cortex-m4  -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
Lib_dc_motor_MK3239_CXXFLAGS         :=             -mthumb -mcpu=cortex-m4  -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
Lib_RGB_P9813_MK3239_CXXFLAGS         :=             -mthumb -mcpu=cortex-m4  -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
Sensor_BME280_MK3239_CXXFLAGS         :=             -mthumb -mcpu=cortex-m4  -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
Sensor_DHT11_MK3239_CXXFLAGS         :=             -mthumb -mcpu=cortex-m4  -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
Sensor_APDS9930_MK3239_CXXFLAGS         :=             -mthumb -mcpu=cortex-m4  -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
Sensor_Light_adc_MK3239_CXXFLAGS         :=             -mthumb -mcpu=cortex-m4  -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
Sensor_Infrared_Reflective_MK3239_CXXFLAGS         :=             -mthumb -mcpu=cortex-m4  -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
Lib_JSON_C_CXXFLAGS         :=             -mthumb -mcpu=cortex-m4  -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
GCC_CXXFLAGS         :=             -mthumb -mcpu=cortex-m4  -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
STM32F4xx_Peripheral_Drivers_CXXFLAGS         :=             -mthumb -mcpu=cortex-m4  -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
STM32F4xx_Peripheral_Libraries_CXXFLAGS         :=             -mthumb -mcpu=cortex-m4  -mlittle-endian            -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=2 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"SDIO\" -Ibuild/bootloader@MK3239@NoRTOS@release/resources/ -DPLATFORM=\"MK3239\" 
APP_bootloader_ASMFLAGS         :=             -mcpu=cortex-m4 -mfpu=softvfp              -ggdb
Board_MiCOKit_3239_ASMFLAGS         :=             -mcpu=cortex-m4 -mfpu=softvfp              -ggdb
NoRTOS_ASMFLAGS         :=             -mcpu=cortex-m4 -mfpu=softvfp              -ggdb
LwIP_ASMFLAGS         :=             -mcpu=cortex-m4 -mfpu=softvfp              -ggdb
Lib_wolfSSL_ASMFLAGS         :=             -mcpu=cortex-m4 -mfpu=softvfp              -ggdb
MiCO_ASMFLAGS         :=             -mcpu=cortex-m4 -mfpu=softvfp              -ggdb
Lib_SPI_Flash_Library_MK3239_ASMFLAGS         :=             -mcpu=cortex-m4 -mfpu=softvfp              -ggdb
Lib_gpio_button_MK3239_ASMFLAGS         :=             -mcpu=cortex-m4 -mfpu=softvfp              -ggdb
Lib_MiCOKit_EXT_MK3239_ASMFLAGS         :=             -mcpu=cortex-m4 -mfpu=softvfp              -ggdb
MiCO_LwIP_Interface_ASMFLAGS         :=             -mcpu=cortex-m4 -mfpu=softvfp              -ggdb
Lib_Utilities_ASMFLAGS         :=             -mcpu=cortex-m4 -mfpu=softvfp              -ggdb
STM32F4xx_ASMFLAGS         :=             -mcpu=cortex-m4 -mfpu=softvfp              -ggdb
Lib_VGM128064_MK3239_ASMFLAGS         :=             -mcpu=cortex-m4 -mfpu=softvfp              -ggdb
Lib_dc_motor_MK3239_ASMFLAGS         :=             -mcpu=cortex-m4 -mfpu=softvfp              -ggdb
Lib_RGB_P9813_MK3239_ASMFLAGS         :=             -mcpu=cortex-m4 -mfpu=softvfp              -ggdb
Sensor_BME280_MK3239_ASMFLAGS         :=             -mcpu=cortex-m4 -mfpu=softvfp              -ggdb
Sensor_DHT11_MK3239_ASMFLAGS         :=             -mcpu=cortex-m4 -mfpu=softvfp              -ggdb
Sensor_APDS9930_MK3239_ASMFLAGS         :=             -mcpu=cortex-m4 -mfpu=softvfp              -ggdb
Sensor_Light_adc_MK3239_ASMFLAGS         :=             -mcpu=cortex-m4 -mfpu=softvfp              -ggdb
Sensor_Infrared_Reflective_MK3239_ASMFLAGS         :=             -mcpu=cortex-m4 -mfpu=softvfp              -ggdb
Lib_JSON_C_ASMFLAGS         :=             -mcpu=cortex-m4 -mfpu=softvfp              -ggdb
GCC_ASMFLAGS         :=             -mcpu=cortex-m4 -mfpu=softvfp              -ggdb
STM32F4xx_Peripheral_Drivers_ASMFLAGS         :=             -mcpu=cortex-m4 -mfpu=softvfp              -ggdb
STM32F4xx_Peripheral_Libraries_ASMFLAGS         :=             -mcpu=cortex-m4 -mfpu=softvfp              -ggdb
APP_bootloader_RESOURCES        := 
Board_MiCOKit_3239_RESOURCES        := 
NoRTOS_RESOURCES        := 
LwIP_RESOURCES        := 
Lib_wolfSSL_RESOURCES        := 
MiCO_RESOURCES        := 
Lib_SPI_Flash_Library_MK3239_RESOURCES        := 
Lib_gpio_button_MK3239_RESOURCES        := 
Lib_MiCOKit_EXT_MK3239_RESOURCES        := 
MiCO_LwIP_Interface_RESOURCES        := 
Lib_Utilities_RESOURCES        := 
STM32F4xx_RESOURCES        := 
Lib_VGM128064_MK3239_RESOURCES        := 
Lib_dc_motor_MK3239_RESOURCES        := 
Lib_RGB_P9813_MK3239_RESOURCES        := 
Sensor_BME280_MK3239_RESOURCES        := 
Sensor_DHT11_MK3239_RESOURCES        := 
Sensor_APDS9930_MK3239_RESOURCES        := 
Sensor_Light_adc_MK3239_RESOURCES        := 
Sensor_Infrared_Reflective_MK3239_RESOURCES        := 
Lib_JSON_C_RESOURCES        := 
GCC_RESOURCES        := 
STM32F4xx_Peripheral_Drivers_RESOURCES        := 
STM32F4xx_Peripheral_Libraries_RESOURCES        := 
APP_bootloader_MAKEFILE         := ././bootloader/bootloader.mk
Board_MiCOKit_3239_MAKEFILE         := ./board/MK3239/MK3239.mk
NoRTOS_MAKEFILE         := ./MiCO/RTOS/NoRTOS/NoRTOS.mk
LwIP_MAKEFILE         := ./MiCO/net/LwIP/LwIP.mk
Lib_wolfSSL_MAKEFILE         := ./MiCO/Security/TLS/wolfSSL/wolfSSL.mk
MiCO_MAKEFILE         := ././MiCO/MiCO.mk
Lib_SPI_Flash_Library_MK3239_MAKEFILE         := ./libraries/drivers/spi_flash/spi_flash.mk
Lib_gpio_button_MK3239_MAKEFILE         := ./libraries/drivers/keypad/gpio_button/gpio_button.mk
Lib_MiCOKit_EXT_MK3239_MAKEFILE         := ./libraries/drivers/MiCOKit_EXT/MiCOKit_EXT.mk
MiCO_LwIP_Interface_MAKEFILE         := ././MiCO/net/LwIP/mico/mico.mk
Lib_Utilities_MAKEFILE         := ./libraries/utilities/utilities.mk
STM32F4xx_MAKEFILE         := ././platform/MCU/STM32F4xx/STM32F4xx.mk
Lib_VGM128064_MK3239_MAKEFILE         := ./libraries/drivers/display/VGM128064/VGM128064.mk
Lib_dc_motor_MK3239_MAKEFILE         := ./libraries/drivers/motor/dc_motor/dc_motor.mk
Lib_RGB_P9813_MK3239_MAKEFILE         := ./libraries/drivers/rgb_led/P9813/P9813.mk
Sensor_BME280_MK3239_MAKEFILE         := ./libraries/drivers/sensor/BME280/BME280.mk
Sensor_DHT11_MK3239_MAKEFILE         := ./libraries/drivers/sensor/DHT11/DHT11.mk
Sensor_APDS9930_MK3239_MAKEFILE         := ./libraries/drivers/sensor/APDS9930/APDS9930.mk
Sensor_Light_adc_MK3239_MAKEFILE         := ./libraries/drivers/sensor/light_adc/light_adc.mk
Sensor_Infrared_Reflective_MK3239_MAKEFILE         := ./libraries/drivers/sensor/infrared_adc/infrared_adc.mk
Lib_JSON_C_MAKEFILE         := ./libraries/utilities/json_c/json_c.mk
GCC_MAKEFILE         := ./platform/GCC/GCC.mk
STM32F4xx_Peripheral_Drivers_MAKEFILE         := ./platform/MCU/STM32F4xx/peripherals/peripherals.mk
STM32F4xx_Peripheral_Libraries_MAKEFILE         := ./platform/MCU/STM32F4xx/peripherals/libraries/libraries.mk
APP_bootloader_PRE_BUILD_TARGETS:= 
Board_MiCOKit_3239_PRE_BUILD_TARGETS:= 
NoRTOS_PRE_BUILD_TARGETS:= 
LwIP_PRE_BUILD_TARGETS:= 
Lib_wolfSSL_PRE_BUILD_TARGETS:= 
MiCO_PRE_BUILD_TARGETS:= 
Lib_SPI_Flash_Library_MK3239_PRE_BUILD_TARGETS:= 
Lib_gpio_button_MK3239_PRE_BUILD_TARGETS:= 
Lib_MiCOKit_EXT_MK3239_PRE_BUILD_TARGETS:= 
MiCO_LwIP_Interface_PRE_BUILD_TARGETS:= 
Lib_Utilities_PRE_BUILD_TARGETS:= 
STM32F4xx_PRE_BUILD_TARGETS:= 
Lib_VGM128064_MK3239_PRE_BUILD_TARGETS:= 
Lib_dc_motor_MK3239_PRE_BUILD_TARGETS:= 
Lib_RGB_P9813_MK3239_PRE_BUILD_TARGETS:= 
Sensor_BME280_MK3239_PRE_BUILD_TARGETS:= 
Sensor_DHT11_MK3239_PRE_BUILD_TARGETS:= 
Sensor_APDS9930_MK3239_PRE_BUILD_TARGETS:= 
Sensor_Light_adc_MK3239_PRE_BUILD_TARGETS:= 
Sensor_Infrared_Reflective_MK3239_PRE_BUILD_TARGETS:= 
Lib_JSON_C_PRE_BUILD_TARGETS:= 
GCC_PRE_BUILD_TARGETS:= 
STM32F4xx_Peripheral_Drivers_PRE_BUILD_TARGETS:= 
STM32F4xx_Peripheral_Libraries_PRE_BUILD_TARGETS:= 
APP_bootloader_PREBUILT_LIBRARY := 
Board_MiCOKit_3239_PREBUILT_LIBRARY := 
NoRTOS_PREBUILT_LIBRARY := 
LwIP_PREBUILT_LIBRARY := 
Lib_wolfSSL_PREBUILT_LIBRARY := ./MiCO/Security/TLS/wolfSSL/Lib_wolfSSL.Cortex-M4.GCC.release.a
MiCO_PREBUILT_LIBRARY := 
Lib_SPI_Flash_Library_MK3239_PREBUILT_LIBRARY := 
Lib_gpio_button_MK3239_PREBUILT_LIBRARY := 
Lib_MiCOKit_EXT_MK3239_PREBUILT_LIBRARY := 
MiCO_LwIP_Interface_PREBUILT_LIBRARY := 
Lib_Utilities_PREBUILT_LIBRARY := 
STM32F4xx_PREBUILT_LIBRARY := 
Lib_VGM128064_MK3239_PREBUILT_LIBRARY := 
Lib_dc_motor_MK3239_PREBUILT_LIBRARY := 
Lib_RGB_P9813_MK3239_PREBUILT_LIBRARY := 
Sensor_BME280_MK3239_PREBUILT_LIBRARY := 
Sensor_DHT11_MK3239_PREBUILT_LIBRARY := 
Sensor_APDS9930_MK3239_PREBUILT_LIBRARY := 
Sensor_Light_adc_MK3239_PREBUILT_LIBRARY := 
Sensor_Infrared_Reflective_MK3239_PREBUILT_LIBRARY := 
Lib_JSON_C_PREBUILT_LIBRARY := 
GCC_PREBUILT_LIBRARY := 
STM32F4xx_Peripheral_Drivers_PREBUILT_LIBRARY := 
STM32F4xx_Peripheral_Libraries_PREBUILT_LIBRARY := 
MiCO_SDK_UNIT_TEST_SOURCES   		:=                                                
ALL_RESOURCES             		:= 
INTERNAL_MEMORY_RESOURCES 		:= 
EXTRA_TARGET_MAKEFILES 			:=   .//makefiles/mico_standard_targets.mk
APPS_START_SECTOR 				:=  
BOOTLOADER_FIRMWARE				:=  
ATE_FIRMWARE				        :=  
APPLICATION_FIRMWARE				:=  
PARAMETER_1_IMAGE					:=  
PARAMETER_2_IMAGE					:=  
FILESYSTEM_IMAGE					:=  
WIFI_FIRMWARE						:= resources/wifi_firmware/43438/43438A1-7.45.45.17.bin 
BT_PATCH_FIRMWARE					:=  
MiCO_ROM_SYMBOL_LIST_FILE 		:= 
MiCO_SDK_CHIP_SPECIFIC_SCRIPT		:=                        
MiCO_SDK_CONVERTER_OUTPUT_FILE	:=                        
MiCO_SDK_FINAL_OUTPUT_FILE 		:=                        
MiCO_RAM_STUB_LIST_FILE 			:= 
MOC_KERNEL_BIN_FILE 				:= 
MOC_APP_OFFSET 				:= 
