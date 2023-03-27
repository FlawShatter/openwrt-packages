# SPDX-License-Identifier: GPL-3.0-only
#
# Copyright (C) 2021 ImmortalWrt.org

include $(TOPDIR)/rules.mk

PKG_NAME:=toml11

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/ToruNiina/toml11.git
PKG_SOURCE_DATE:=2023-03-17
PKG_SOURCE_VERSION:=d47fe788bcb08c9d0d2a73954a0dfaf512964fdc
PKG_MIRROR_HASH:=ef6c8f4902c299df75901d8f01cfb06efb930eb87982ecd05970d6246f9bfd7b


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
