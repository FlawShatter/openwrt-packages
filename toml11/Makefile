# SPDX-License-Identifier: GPL-3.0-only
#
# Copyright (C) 2021 ImmortalWrt.org

include $(TOPDIR)/rules.mk

PKG_NAME:=toml11

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/ToruNiina/toml11
PKG_SOURCE_DATE:=2022-10-24
PKG_SOURCE_VERSION:=22db720ad55c3470c4d036ae74be35e68c761845
PKG_MIRROR_HASH:=8ec461d2569aae608bcab7cd21c05c30956593de7abeae7894c5cb99bbfb3ece


PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_PARALLEL:=1
CMAKE_INSTALL:=1

CMAKE_OPTIONS+= -DCMAKE_CXX_STANDARD=11

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
