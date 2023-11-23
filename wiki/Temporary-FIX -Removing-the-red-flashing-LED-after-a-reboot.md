This is a temporary fix to the red flashing light after a reboot of the iHost:

![ihost_RED-LED](ihost_RED-LED.jpg)

1. Install the AppDaemon from Settings --> Add-On --> Add-on Store
2. Configure it:
* Paste `yc1175-indicator` in the Python packages
* Paste `indicator-cli 4 --effect 0 ` to turn off the light or `indicator-cli 4 --effect 1 --rgb 0 0 255` for constant blue LED
3. Press `SAVE`
![image](/284392686-5c027810-9e0f-4563-8e97-a3decef6154c.png)

4. On the Info page, make sure the Star on boot is ON!
![image](/284392871-3d01680f-5878-4222-9b62-2e0606095e7e.png)
