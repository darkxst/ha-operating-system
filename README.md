# HAOS for Sonoff iHost
July 2025 - Home Assistant has now deprecated support for 32-bit ARM processors. 
https://www.home-assistant.io/blog/2025/05/22/deprecating-core-and-supervised-installation-methods-and-32-bit-systems/

Thus support for HAOS will no longer be possible. You have until 2025.12 release to migrate to a suitable replacement 64-bit device.

------------------------------------------

This is an unofficial port of [Home Assistant Operating System (HAOS)](https://github.com/home-assistant/operating-system) to run on [Sonoff iHost (Smart Home Hub Appliance) hardware by ITead](https://itead.cc/product/sonoff-ihost-smart-home-hub/).

Documentation specific to this port is in this wiki -> https://github.com/darkxst/ha-operating-system/wiki/HAOS-on-Sonoff-iHost

A reason for using this port is that this hardware represents one of the most inexpensive ways to run HAOS on a decent dedicated appliance, and another reason is repurposing the hardware Sonoff iHost if you have outgrown its own built-in features, functions and supported devices.

A custom integration that enables you to control the RGB indicator and buttons on the Sonoff iHost is available [here](https://github.com/darkxst/ihost_indicator). The underlying library that powers this integration but also provide a command line tool to control the LED is available [here](https://github.com/darkxst/yc1175-indicator)

(FYI, compared to the official [Home Assistant Green](https://www.home-assistant.io/green/), Sonoff iHost comes with build-in Zigbee Coordinator, similar to [Home Assistant Yellow](https://www.home-assistant.io/yellow/)).

## Home Assistant Operating System

Home Assistant Operating System (a.k.a. Hass.io/Hassio formerly HassOS) is a Linux-based operating system optimized to host [Home Assistant](https://www.home-assistant.io) and its [Add-ons](https://www.home-assistant.io/addons/). Home Assistant OS is an all-in solution and has a management user interface that can be used from the Home Assistant's frontend.

## Features

- Lightweight and memory-efficient
- Minimized I/O
- Over The Air (OTA) updates
- Offline updates
- Modular using Docker container engine
- Allow use of Home Assiatnt's [Add-ons](https://www.home-assistant.io/addons/)

## Supported hardware

- Sonoff iHost by ITead
  - https://itead.cc/product/sonoff-ihost-smart-home-hub/
  - https://sonoff.tech/product/gateway-and-sensors/ihost/

## Wiki and community discussions

- https://github.com/darkxst/ha-operating-system/wiki/HAOS-on-Sonoff-iHost
- https://github.com/darkxst/ha-operating-system/discussions

## Support Development

If you would like to help support further development of my `HAOS for iHost` project consider buying me a coffee!

<a href="https://www.buymeacoffee.com/darkxst" target="_blank"><img src="img/blue-button.png" alt="Buy Me A Coffee" height="41" width="174"></a>



