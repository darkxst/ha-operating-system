# HAOS for Sonoff iHost

This is an unofficial port of [Home Assistant Operating System (HAOS)](https://github.com/home-assistant/operating-system) to run on [Sonoff iHost (Smart Home Hub Appliance) hardware by ITead](https://itead.cc/product/sonoff-ihost-smart-home-hub/).

Documentation specific to this port is in this wiki -> https://github.com/darkxst/ha-operating-system/wiki/HAOS-on-Sonoff-iHost

A reason for using this port is that this hardware represents one of the most inexpensive ways to run HAOS on a decent dedicated appliance, and another reason is repurposing the hardware Sonoff iHost if you have outgrown its own built-in features, functions and supported devices.

(FYI, compared to the official [Home Assistant Green](https://www.home-assistant.io/green/), Sonoff iHost comes with build-in Zigbee Coordinator, similar to [Home Assistant Yellow](https://www.home-assistant.io/yellow/)).

## Home Assistant Operating System

Home Assistant Operating System (a.k.a. Hass.io/Hassio formerly HassOS) is a Linux-based operating system optimized to host [Home Assistant](https://www.home-assistant.io) and its [Add-ons](https://www.home-assistant.io/addons/). Home Assistant OS is an all-in solution and has a management user interface that can be used from the Home Assistant's frontend.

Home Assistant OS itself is a combination of Home Assistant's [core](https://github.com/home-assistant/core), [frontend](https://github.com/home-assistant/frontend), [supervisor](https://github.com/home-assistant/supervisor), [addons](https://github.com/home-assistant/addons), and tools which allows users to easily run and maintain it different computer platforms without maintaining a operating system separately. 

Home Assistant Operating System uses Docker as its container engine. By default it deploys the Home Assistant Supervisor as a container. Home Assistant Supervisor in turn uses the Docker container engine to control Home Assistant Core and Add-Ons in separate containers. Home Assistant Operating System is **not** based on a regular Linux distribution like Ubuntu. It is built using [Buildroot](https://buildroot.org/) and it is optimized to run Home Assistant. 

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

See the full list and specific models [here](./Documentation/boards/README.md)

## Wiki and community discussions

- https://github.com/darkxst/ha-operating-system/wiki/HAOS-on-Sonoff-iHost
- https://github.com/darkxst/ha-operating-system/discussions

## Getting Started

If you just want to use Home Assistant the official [getting started guide](https://www.home-assistant.io/getting-started/) and [installation instructions](https://www.home-assistant.io/hassio/installation/) take you through how to download Home Assistant Operating System and get it running on your machine.

If you're interested in finding out more about Home Assistant Operating System and how it works read on...

## Development

If you don't have experience with embedded systems, Buildroot or the build process for Linux distributions it is recommended to read up on these topics first (e.g. [Bootlin](https://bootlin.com/docs/) has excellent resources).

The Home Assistant Operating System documentation can be found on the [Home Assistant Developer Docs website](https://developers.home-assistant.io/docs/operating-system).

### Components

- **Bootloader:**
  - [Barebox](https://barebox.org/) for devices that support UEFI
  - [U-Boot](https://www.denx.de/wiki/U-Boot) for devices that don't support UEFI
- **Operating System:**
  - [Buildroot](https://buildroot.org/) LTS Linux
- **File Systems:**
  - [SquashFS](https://www.kernel.org/doc/Documentation/filesystems/squashfs.txt) for read-only file systems (using LZ4 compression)
  - [ZRAM](https://www.kernel.org/doc/Documentation/blockdev/zram.txt) for `/tmp`, `/var` and swap (using LZ4 compression)
- **Container Platform:**
  - [Docker Engine](https://docs.docker.com/engine/) for running Home Assistant components in containers
- **Updates:**
  - [RAUC](https://rauc.io/) for Over The Air (OTA) and USB updates
- **Security:**
  - [AppArmor](https://apparmor.net/) Linux kernel security module

### Development builds

The Development build GitHub Action Workflow is a manually triggered workflow
which creates Home Assistant OS development builds. The development builds are
available at [https://os-artifacts.home-assistant.io/index.html](https://os-artifacts.home-assistant.io/index.html).
