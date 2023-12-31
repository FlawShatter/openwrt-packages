include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyusb
PKG_VERSION:=1.2.1
PKG_RELEASE:=1

PYPI_NAME:=pyusb
PKG_HASH:=a4cc7404a203144754164b8b40994e2849fde1cfff06b08492f12fff9d9de7b9

HOST_PYTHON3_PACKAGE_BUILD_DEPENDS:=setuptools-scm

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-pyusb
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=pyusb (Easy USB access from Python)
  URL:=https://github.com/pyusb/pyusb
  DEPENDS:=+python3-light +libusb-1.0
endef

define Package/python3-pyusb/description
  The PyUSB module provides for Python easy access to the host machine's Universal Serial Bus (USB) system.
endef

$(eval $(call Py3Package,python3-pyusb))
$(eval $(call BuildPackage,python3-pyusb))
$(eval $(call BuildPackage,python3-pyusb-src))
