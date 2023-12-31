include $(TOPDIR)/rules.mk

PKG_NAME:=python-html5lib
PKG_VERSION:=1.1
PKG_RELEASE:=1

PYPI_NAME:=html5lib
PKG_HASH:=b2e5b40261e20f354d198eae92afc10d750afb487ed5e50f9c4eaf07c184146f

HOST_PYTHON3_PACKAGE_BUILD_DEPENDS:=setuptools-scm

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-html5lib
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=html5lib
  URL:=https://pypi.org/project/python-html5lib
  DEPENDS:=+python3-light +python3-requests
endef

define Package/python3-html5lib/description
  html5lib is a pure-python library for parsing HTML. It is designed to conform to the WHATWG HTML specification, as is implemented by all major web browsers.
endef

$(eval $(call Py3Package,python3-html5lib))
$(eval $(call BuildPackage,python3-html5lib))
$(eval $(call BuildPackage,python3-html5lib-src))
