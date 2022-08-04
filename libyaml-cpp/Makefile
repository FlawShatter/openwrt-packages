#
# Copyright (C) 2017 Steven Hessing
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=libyaml-cpp

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/jbeder/yaml-cpp
PKG_SOURCE_DATE:=2022-06-01
PKG_SOURCE_VERSION:=c73ee34704c512ebe915b283645aefa9f424a22f
PKG_MIRROR_HASH:=3fb0a39a77013697e1fd6d80d3a1d2e94474d2e39281543e44f2a54e9583b2cf


PKG_MAINTAINER:= Steven Hessing <steven.hessing@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE
PKG_CPE_ID:=cpe:/a:yaml-cpp_project:yaml-cpp

CMAKE_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/$(PKG_NAME)
  SECTION:=development
  CATEGORY:=Libraries
  TITLE:=libyaml-cpp
  URL:=https://github.com/jbeder/yaml-cpp
  DEPENDS:=+libstdcpp
  ABI_VERSION:=0.7
endef

define Package/$(PKG_NAME)/description
  yaml-cpp is a YAML parser and emitter in C++ matching the YAML 1.2 spec.
endef

CMAKE_OPTIONS += \
	-DYAML_BUILD_SHARED_LIBS=ON \
	-DYAML_CPP_BUILD_TESTS=OFF \
	-DYAML_CPP_BUILD_TOOLS=OFF

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/lib/libyaml-cpp.so.$(ABI_VERSION) $(1)/usr/lib/
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
