WIFI_RTL8831BU_VERSION = 1.0
WIFI_RTL8831BU_LICENSE = MIT
WIFI_RTL8831BU_SOURCE =
WIFI_RTL8831BU_DEPENDENCIES = wpa_supplicant

define WIFI_RTL8831BU_LINUX_CONFIG_FIXUPS
	$(call KCONFIG_SET_OPT,CONFIG_RTW89_8851BU,y)
endef

define WIFI_RTL8831BU_INSTALL_TARGET_CMDS
	grep -q 'wlan0' $(TARGET_DIR)/etc/network/interfaces || \
		cat $(WIFI_RTL8831BU_PKGDIR)/files/wlan0.interfaces \
		>> $(TARGET_DIR)/etc/network/interfaces
	$(INSTALL) -D -m 0600 $(WIFI_RTL8831BU_PKGDIR)/files/wpa_supplicant.conf \
		$(TARGET_DIR)/etc/wpa_supplicant.conf
endef

$(eval $(generic-package))
