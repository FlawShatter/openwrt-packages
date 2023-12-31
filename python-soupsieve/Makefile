include $(TOPDIR)/rules.mk

PKG_NAME:=python-soupsieve
PKG_VERSION:=2.3.1

PYPI_NAME:=soupsieve
PKG_HASH:=b8d49b1cd4f037c7082a9683dfa1801aa2597fb11c3a1155b7a5b94829b4f1f9

HOST_PYTHON3_PACKAGE_BUILD_DEPENDS:=setuptools-scm

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-soupsieve
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=soupsieve
  URL:=https://pypi.org/project/soupsieve
  DEPENDS:=+python3-light
endef

define Package/python3-soupsieve/description
  A modern CSS selector implementation for Beautiful Soup.
endef

$(eval $(call Py3Package,python3-soupsieve))
$(eval $(call BuildPackage,python3-soupsieve))
$(eval $(call BuildPackage,python3-soupsieve-src))
