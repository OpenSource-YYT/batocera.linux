################################################################################
#
# uboot-youyeetoo-r1
#
################################################################################

UBOOT_YOUYEETOO_R1_VERSION = 2017.09-1.0.8
UBOOT_YOUYEETOO_R1_SOURCE =

define UBOOT_YOUYEETOO_R1_BUILD_CMDS
endef

UBOOT_YOUYEETOO_R1_PATH = \
    $(BR2_EXTERNAL_BATOCERA_PATH)/package/batocera/boot/uboot-youyeetoo-r1

define UBOOT_YOUYEETOO_R1_INSTALL_TARGET_CMDS
	mkdir -p $(BINARIES_DIR)/uboot-youyeetoo-r1
	cp -f $(BR2_EXTERNAL_BATOCERA_PATH)/package/batocera/boot/uboot-youyeetoo-r1/idbloader.img \
	    $(BINARIES_DIR)/uboot-youyeetoo-r1/idbloader.img
	cp -f $(BR2_EXTERNAL_BATOCERA_PATH)/package/batocera/boot/uboot-youyeetoo-r1/u-boot.itb \
	    $(BINARIES_DIR)/uboot-youyeetoo-r1/u-boot.itb
endef

$(eval $(generic-package))
