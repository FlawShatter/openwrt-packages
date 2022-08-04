# SPDX-License-Identifier: GPL-3.0-only
#
# Copyright (C) 2021 ImmortalWrt.org

include $(TOPDIR)/rules.mk

PKG_NAME:=toml11

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/ToruNiina/toml11
PKG_SOURCE_DATE:=2021-07-28
PKG_SOURCE_VERSION:=c7627ff6a1eb6f34fbd98369990a9442e2836c25
PKG_MIRROR_HASH:=282efb8881c9e43f421b9014892651c69923023ec64372f266df0eb47c5d66ac


PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_PARALLEL:=1
CMAKE_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/$(PKG_NAME)
  SECTION:=lib
  CATEGORY:=Libraries
  TITLE:=C++11 header-only toml parser/encoder
  URL:=https://github.com/ToruNiina/toml11
endef

define Package/$(PKG_NAME)/description
  toml11 is a C++11 (or later) header-only toml parser/encoder
  depending only on C++ standard library.
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
