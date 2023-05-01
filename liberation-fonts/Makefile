#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=liberation-fonts-ttf
PKG_VERSION:=2.1.1
PKG_RELEASE:=1
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/liberationfonts/liberation-fonts/files/4743886/
PKG_MD5SUM:=09e90edca92018c0a637f50e2d93a50d

include $(INCLUDE_DIR)/package.mk

define Package/liberation-fonts
  SECTION:=fonts
  CATEGORY:=Network
  TITLE:=liberation-fonts
  SUBMENU:=Printing
  DEPENDS:= +fontconfig
endef

define Package/liberation-fonts/description
The Liberation(tm) Fonts is a font family which aims at metric compatibility
with Arial, Times New Roman, and Courier New. It is sponsored by Red Hat
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/liberation-fonts/install
	$(INSTALL_DIR) $(1)/usr/share/fonts/truetype/liberation
	$(CP) $(PKG_BUILD_DIR)/*.ttf $(1)/usr/share/fonts/truetype/liberation
endef

define Package/liberation-fonts/postinst
#!/bin/sh
/usr/bin/fc-cache --force --verbose
endef

$(eval $(call BuildPackage,liberation-fonts))
