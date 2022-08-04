# SPDX-License-Identifier: GPL-3.0-only
#
# Copyright (C) 2021 ImmortalWrt.org

include $(TOPDIR)/rules.mk

PKG_NAME:=libcron
PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/PerMalmberg/libcron
PKG_SOURCE_DATE:=2021-12-20
PKG_SOURCE_VERSION:=5c8de082c16fb0a6dfa3902aa30ec0b9063705de
PKG_MIRROR_HASH:=80e1454bec33a46c5a37e01392a4e6e1b8c242bfef446903c5da3c5c2e7b9565

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
