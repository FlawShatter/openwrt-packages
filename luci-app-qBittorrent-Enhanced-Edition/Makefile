include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-qBittorrent-Enhanced-Edition
PKG_VERSION:=1.0
PKG_RELEASE:=2
LUCI_TITLE:=LuCI support for qBittorrent-Enhanced-Edition
LUCI_PKGARCH:=all
LUCI_DEPENDS:= \
	+PACKAGE_$(PKG_NAME)_static:qBittorrent-Enhanced-Edition-static \
	+PACKAGE_$(PKG_NAME)_dynamic:qBittorrent-Enhanced-Edition

define Package/$(PKG_NAME)/config
	choice
		prompt "Build Selection"
		default PACKAGE_$(PKG_NAME)_dynamic

		config PACKAGE_$(PKG_NAME)_static
			bool "Static"
			depends on aarch64||x86_64

		config PACKAGE_$(PKG_NAME)_dynamic
			bool "Dynamic"

	endchoice
endef

define Package/$(PKG_NAME)/conffiles
/etc/qBittorrent
/etc/config/qBittorrentEE
endef

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature