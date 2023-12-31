include $(TOPDIR)/rules.mk

PKG_NAME:=python-tencentcloud-sdk-python
PKG_VERSION:=3.0.670
PKG_RELEASE:=1

PYPI_NAME:=tencentcloud-sdk-python
PKG_HASH:=40ed7720989b68767c9420c842eea07e80b7fda35bf138110cbb0d931be1c1f4

HOST_PYTHON3_PACKAGE_BUILD_DEPENDS:=setuptools-scm

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-tencentcloud-sdk-python
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=tencentcloud-sdk-python
  URL:=https://pypi.org/project/tencentcloud-sdk-python/
  DEPENDS:=+python3-light +python3-requests
endef

define Package/python3-tencentcloud-sdk-python/description
  Tencent Cloud SDK for Python.
endef

$(eval $(call Py3Package,python3-tencentcloud-sdk-python))
$(eval $(call BuildPackage,python3-tencentcloud-sdk-python))
$(eval $(call BuildPackage,python3-tencentcloud-sdk-python-src))
