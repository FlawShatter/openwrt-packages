include $(TOPDIR)/rules.mk

PKG_NAME:=python-apprise
PKG_VERSION:=0.9.9
PKG_RELEASE:=1

PYPI_NAME:=apprise
PKG_HASH:=6ba3d0e8307e2647c3240ec1a0d5571f3a453f9143d94834ecb02660b0e8d244

HOST_PYTHON3_PACKAGE_BUILD_DEPENDS:=setuptools-scm

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-apprise
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=apprise
  URL:=https://pypi.org/project/apprise
  DEPENDS:=+python3-light +python3-click +python3-markdown \
            +python3-yaml +python3-requests +python3-requests-oauthlib \
            +python3-six
endef

define Package/python3-apprise/description
  This project provides first-class OAuth library support for [Requests](http://python-requests.org).
endef

$(eval $(call Py3Package,python3-apprise))
$(eval $(call BuildPackage,python3-apprise))
$(eval $(call BuildPackage,python3-apprise-src))
