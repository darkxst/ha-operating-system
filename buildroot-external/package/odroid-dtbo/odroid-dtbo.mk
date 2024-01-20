# sed -i '/#include <dt-bindings\//d' $(@D)/display_vu8s.dts

ODROID_DTBO_VERSION = 0.99.0
ODROID_DTBO_LICENSE = Apache License 2.0
ODROID_DTBO_LICENSE_FILES = $(BR2_EXTERNAL_HASSOS_PATH)/../LICENSE
ODROID_DTBO_SITE = $(BR2_EXTERNAL_HASSOS_PATH)/package/odroid-dtbo
ODROID_DTBO_SITE_METHOD = local
ODROID_DTBO_DEPENDENCIES = host-dtc linux-headers
ODROID_DTBO_OVERLAYS = display_vu8s

define ODROID_DTBO_BUILD_CMDS
	$(foreach overlay,$(ODROID_DTBO_OVERLAYS),\
		curl -L -o $(@D)/$(overlay).dts https://github.com/tobetter/linux/raw/4abe38fb1d55e2c5f10582404c5ff88505060b73/arch/arm64/boot/dts/rockchip/overlays/odroidm1s/$(overlay).dts
		$(HOSTCC) -I $(LINUX_DIR)/include -E -nostdinc -undef -D__DTS__ -x assembler-with-cpp -o $(@D)/$(overlay).dts.pp $(@D)/$(overlay).dts
		$(HOST_DIR)/bin/dtc -@ -I dts -O dtb -W no-unit_address_vs_reg \
		-o $(@D)/$(overlay).dtbo $(@D)/$(overlay).dts.pp
	)
endef

define ODROID_DTBO_INSTALL_TARGET_CMDS
	$(foreach overlay,$(ODROID_DTBO_OVERLAYS),\
		$(INSTALL) -D -m 0644 $(@D)/$(overlay).dtbo $(BINARIES_DIR)/
	)
endef

$(eval $(generic-package))
