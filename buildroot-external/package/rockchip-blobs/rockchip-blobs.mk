################################################################################
#
# Rockchip loader binaries
#
################################################################################

ROCKCHIP_BLOBS_VERSION = $(call qstrip,$(BR2_PACKAGE_ROCKCHIP_BLOBS_VERSION))
ROCKCHIP_BLOBS_SOURCE = $(ROCKCHIP_BLOBS_VERSION).tar.gz
ROCKCHIP_BLOBS_SITE = https://github.com/rockchip-linux/rkbin/archive
ROCKCHIP_BLOBS_LICENSE = PROPRIETARY
ROCKCHIP_BLOBS_INSTALL_IMAGES = YES

define ROCKCHIP_BLOBS_INSTALL_IMAGES_CMDS
	if [[ -n "$(BR2_PACKAGE_ROCKCHIP_BLOBS_ATF)" ]]; then \
		$(INSTALL) -D -m 0644 $(@D)/$(BR2_PACKAGE_ROCKCHIP_BLOBS_ATF) $(BINARIES_DIR)/bl31.elf; \
		$(INSTALL) -D -m 0644 $(@D)/$(BR2_PACKAGE_ROCKCHIP_BLOBS_TPL) $(BINARIES_DIR)/ram_init.bin; \
	fi

	if [[ -n "$(BR2_PACKAGE_ROCKCHIP_BLOBS_TEE)" ]]; then \
		$(INSTALL) -D -m 0644 $(@D)/$(BR2_PACKAGE_ROCKCHIP_BLOBS_TEE) $(BINARIES_DIR)/tee.bin; \
	fi
endef

$(eval $(generic-package))
