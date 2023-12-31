include $(TOPDIR)/rules.mk

PKG_NAME:=python-requests-oauthlib
PKG_VERSION:=1.3.1
PKG_RELEASE:=1

PYPI_NAME:=requests-oauthlib
PKG_HASH:=75beac4a47881eeb94d5ea5d6ad31ef88856affe2332b9aafb52c6452ccf0d7a

HOST_PYTHON3_PACKAGE_BUILD_DEPENDS:=setuptools-scm

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-requests-oauthlib
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=requests-oauthlib
  URL:=https://pypi.org/project/requests-oauthlib
  DEPENDS:=+python3-light +python3-requests
endef

define Package/python3-requests-oauthlib/description
  This project provides first-class OAuth library support for requests. 
endef

$(eval $(call Py3Package,python3-requests-oauthlib))
$(eval $(call BuildPackage,python3-requests-oauthlib))
$(eval $(call BuildPackage,python3-requests-oauthlib-src))
