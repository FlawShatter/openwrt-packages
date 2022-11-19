# SPDX-License-Identifier: GPL-3.0-only
#
# Copyright (C) 2021 ImmortalWrt.org

include $(TOPDIR)/rules.mk

PKG_NAME:=libcron
PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/PerMalmberg/libcron
PKG_SOURCE_DATE:=2022-08-27
PKG_SOURCE_VERSION:=0dd9df49d7833a2d2119e4a6ff8282df58b12d5d
PKG_MIRROR_HASH:=a18c8ea0aa53be72cb67389bcd841c6501ce9c48a2467452e94691aa741f319b

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Tianling Shen <cnsztl@immortalwrt.org>

PKG_BUILD_PARALLEL:=1
CMAKE_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/$(PKG_NAME)
  SECTION:=lib
  CATEGORY:=Libraries
  URL:=https://github.com/PerMalmberg/libcron
  TITLE:=A C++ scheduling library using cron formatting
endef

define Package/$(PKG_NAME)/description
  Libcron offers an easy to use API to add callbacks with corresponding cron-formatted strings.
endef

define Build/Install
	$(INSTALL_DIR) $(PKG_INSTALL_DIR)/usr/lib/
	$(CP) $(PKG_BUILD_DIR)/libcron/out/Release/liblibcron.a $(PKG_INSTALL_DIR)/usr/lib/
	$(INSTALL_DIR) $(PKG_INSTALL_DIR)/usr/include/libcron/
	$(CP) $(PKG_BUILD_DIR)/libcron/include/* $(PKG_INSTALL_DIR)/usr/include/
	$(CP) $(PKG_BUILD_DIR)/libcron/externals/date/include/* $(PKG_INSTALL_DIR)/usr/include/
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
