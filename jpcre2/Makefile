# SPDX-License-Identifier: GPL-3.0-only
#
# Copyright (C) 2021 ImmortalWrt.org

include $(TOPDIR)/rules.mk

PKG_NAME:=jpcre2

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/jpcre2/jpcre2
PKG_SOURCE_DATE:=2021-06-15
PKG_SOURCE_VERSION:=867af2d36413cf5f69c2e224f4f96f56f876d889
PKG_MIRROR_HASH:=42242a781ea33c41a504cac115ddf15bbbfc0886c83cbf585b6c2bd2b23a8658

PKG_LICENSE:=BSD 3-Clause
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Tianling Shen <cnsztl@immortalwrt.org>

PKG_BUILD_DEPENDS:=pcre2
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  SECTION:=lib
  CATEGORY:=Libraries
  TITLE:=C++ wrapper for PCRE2 Library
  URL:=https://github.com/jpcre2/jpcre2
endef

define Package/$(PKG_NAME)/description
  This provides some C++ wrapper classes/functions to perform regex
  operations such as regex match and regex replace.
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/jpcre2.hpp $(1)/usr/include/jpcre2.hpp
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
