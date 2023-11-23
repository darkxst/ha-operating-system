On the first time, you may need to upgrade the ZHA firmware.

### Updating the ZHA driver:
**First, make sure your ZHA is disabled, before proceeding**

1. Open the Home Assistant web page;
2. Make sure you user profile settings page has `Advanced mode` enabled:
![image](/284384077-a7464637-6dd9-4567-a74b-2e00d6b32965.png)

3. Go to `Settings `-> `Add-ons`;
4. Open the `ADD-ON STORE` and install the `Silicon Labs Flasher`
![image](/284385152-c079a68d-ca66-426e-828b-8624cdd382e3.png)
5. Configure the add-on:
*  Device: `/dev/ttyS4`
*  Bootloader Baudrate : `115200`
*  Hardware flow control: `OFF` (software)
*  Firmware URL (paste URL):
[EZSP firmware 6.10.7](https://github.com/xsp1989/zigbeeFirmware/raw/master/firmware/Zigbee3.0_Dongle-NoSigned/EZSP/ncp-uart-sw_6.10.7.0_115200.gbl)
[EZSP firmware 7.3.2](https://github.com/darkxst/silabs-firmware-builder/raw/main/firmware_builds/zbdonglee/ncp-uart-hw-v7.3.2.0-zbdonglee-115200.gbl)

![image](/284386250-1b64591c-3f09-4cac-8918-5a3683c23554.png)


# ZHA Configuration:
1. Open the Home Assistant web page;
2. Go to `Settings `-> `Devices and Services`;
3. Click in `+ ADD INTEGRATION` an `Zigbee Home Automation`
4. Configure:
*  On-board EFR32MG21 EZSP Zigbee radio
*  Device port: `/dev/ttyS4`
*  Baudrate : `115200`
*  Hardware flow control: `OFF` (software)

