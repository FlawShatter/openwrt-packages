include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyDes
PKG_VERSION:=2.0.1
PKG_RELEASE:=1

PYPI_NAME:=pyDes
PKG_HASH:=e2ab8e21d2b83e90d90dbfdcb6fb8ac0000b813238b7ecaede04f8435c389012

HOST_PYTHON3_PACKAGE_BUILD_DEPENDS:=setuptools-scm
PYTHON3_PKG_SETUP_ARGS:=
include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pyDes
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=pyDes
  URL:=https://pypi.org/project/pyDes
  DEPENDS:=+python3-light
endef

define Package/python3-pyDes/description
  A pure python module which implements the DES and Triple-DES encryption algorithms.
endef

$(eval $(call Py3Package,python3-pyDes))
$(eval $(call BuildPackage,python3-pyDes))
$(eval $(call BuildPackage,python3-pyDes-src))
