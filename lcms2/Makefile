#
# Copyright (C) 2011-2021 Entware
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=lcms
PKG_VERSION:=2.14
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)2-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=@SF/$(PKG_NAME)
PKG_HASH:=28474ea6f6591c4d4cee972123587001a4e6e353412a41b3e9e82219818d5740

PKG_INSTALL:=1

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)2-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk

define Package/lcms
	SECTION:=utils
	CATEGORY:=Utilities
	SUBMENU:=Printing
	DEPENDS:=+libtiff +libpthread
	TITLE:=little CMS color engine
	URL:=http://www.littlecms.com/
	MAINTAINER:=Entware team, https://entware.net
endef

define Package/lcms/description
 Little CMS color engine.
endef

define Package/lcms/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/*icc $(1)/usr/bin
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/liblcms2.so* $(1)/usr/lib
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/* $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/lcms2.pc $(1)/usr/lib/pkgconfig
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/lcms2*.h $(1)/usr/include
endef

$(eval $(call BuildPackage,lcms))