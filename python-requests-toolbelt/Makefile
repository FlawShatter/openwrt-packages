include $(TOPDIR)/rules.mk

PKG_NAME:=python-requests-toolbelt
PKG_VERSION:=0.9.1
PKG_RELEASE:=1

PYPI_NAME:=requests-toolbelt
PKG_HASH:=968089d4584ad4ad7c171454f0a5c6dac23971e9472521ea3b6d49d610aa6fc0

HOST_PYTHON3_PACKAGE_BUILD_DEPENDS:=setuptools-scm

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-requests-toolbelt
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=requests-toolbelt
  URL:=https://pypi.org/project/requests-toolbelt
  DEPENDS:=+python3-light +python3-requests
endef

define Package/python3-requests-toolbelt/description
  A utility belt for advanced users of python-requests
endef

$(eval $(call Py3Package,python3-requests-toolbelt))
$(eval $(call BuildPackage,python3-requests-toolbelt))
$(eval $(call BuildPackage,python3-requests-toolbelt-src))
