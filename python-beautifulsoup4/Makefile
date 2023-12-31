include $(TOPDIR)/rules.mk

PKG_NAME:=python-beautifulsoup4
PKG_VERSION:=4.11.1
PKG_RELEASE:=1

PYPI_NAME:=beautifulsoup4
PKG_HASH:=ad9aa55b65ef2808eb405f46cf74df7fcb7044d5cbc26487f96eb2ef2e436693

HOST_PYTHON3_PACKAGE_BUILD_DEPENDS:=setuptools-scm

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-beautifulsoup4
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=beautifulsoup4
  URL:=https://pypi.org/project/beautifulsoup4
  DEPENDS:=+python3-light +python3-html5lib +python3-lxml +python3-soupsieve
endef

define Package/python3-beautifulsoup4/description
  Beautiful Soup is a library for pulling data out of HTML and XML files. It provides ways of navigating, searching, and modifying parse trees.
endef

$(eval $(call Py3Package,python3-beautifulsoup4))
$(eval $(call BuildPackage,python3-beautifulsoup4))
$(eval $(call BuildPackage,python3-beautifulsoup4-src))
