include $(TOPDIR)/rules.mk

PKG_NAME:=mysettings
PKG_VERSION:=1
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/mysettings/Default
  SECTION:=luci
  CATEGORY:=LuCI
  PKGARCH:=all
endef

define Package/mysettings
$(call Package/mysettings/Default)
  TITLE:=my diy.
  DEPENDS:= \
  +nano-plus +vim-fuller +luci-app-natter +luci-app-iptvhelper \
  +luci-app-pgyvpn +luci-app-phtunnel +luci-app-zerotier +luci-app-vnstat \
  +luci-app-ttyd +TARGET_aarch64:luci-app-cpufreq +luci-app-frpc +luci-app-frps
endef

define Package/mysettings-router
$(call Package/mysettings/Default)
  TITLE:=Router packages select.
  DEPENDS:= \
  +6rd +6to4 +kmod-shortcut-fe-cm +luci-app-adguardhome +luci-app-advanced \
  +luci-app-argon-config +luci-app-autotimeset +luci-app-beardropper \
  +luci-app-cloudflarespeedtest +luci-app-commands +luci-app-ddnsto \
  +luci-app-design-config +luci-app-dnsfilter +luci-app-ikoolproxy \
  +luci-app-irqbalance +luci-app-lucky +luci-app-minidlna +luci-app-msd_lite \
  +luci-app-netspeedtest +luci-app-onliner +luci-app-openclash +luci-app-pppoe-relay \
  +luci-app-pushbot +luci-app-ramfree +luci-app-smartdns +luci-app-mosdns \
  +luci-app-tencentddns +luci-app-uhttpd +luci-app-vlmcsd +luci-app-vsftpd \
  +luci-app-webadmin +luci-app-wolplus +luci-app-wrtbwmon +luci-app-privoxy \
  +luci-app-poweroff +ipv6helper +luci-app-unblockmusic \
  +@PACKAGE_luci-app-unblockmusic_INCLUDE_UnblockNeteaseMusic_Go \
  +@PACKAGE_luci-app-unblockmusic_INCLUDE_UnblockNeteaseMusic_NodeJS \
  +luci-theme-argon +luci-theme-darkmatter +luci-theme-design +luci-theme-material
endef

define Package/mysettings-proxy
$(call Package/mysettings/Default)
  TITLE:=Proxy packages
  DEPENDS:=+luci-app-autoipsetadder +luci-app-wireguard \
  +luci-app-passwall \
  +@PACKAGE_luci-app-passwall_INCLUDE_Brook \
  +@PACKAGE_luci-app-passwall_INCLUDE_ChinaDNS_NG \
  +@PACKAGE_luci-app-passwall_INCLUDE_Hysteria \
  +@PACKAGE_luci-app-passwall_INCLUDE_NaiveProxy \
  +@PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Rust_Client \
  +@PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Rust_Server \
  +@PACKAGE_luci-app-passwall_INCLUDE_ShadowsocksR_Libev_Server \
  +@PACKAGE_luci-app-passwall_INCLUDE_Trojan_GO \
  +@PACKAGE_luci-app-passwall_INCLUDE_V2ray_Geodata \
  +@PACKAGE_luci-app-passwall_INCLUDE_V2ray_Plugin \
  +@PACKAGE_luci-app-passwall_INCLUDE_Xray \
  +luci-app-ssr-plus \
  +@PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Rust_Client \
  +@PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Rust_Server \
  +@PACKAGE_luci-app-ssr-plus_INCLUDE_Hysteria \
  +@PACKAGE_luci-app-ssr-plus_INCLUDE_IPT2Socks \
  +@PACKAGE_luci-app-ssr-plus_INCLUDE_Kcptun \
  +@PACKAGE_luci-app-ssr-plus_INCLUDE_NaiveProxy \
  +@PACKAGE_luci-app-ssr-plus_INCLUDE_Redsocks2 \
  +@PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_V2ray_Plugin \
  +@PACKAGE_luci-app-ssr-plus_INCLUDE_ShadowsocksR_Libev_Server \
  +@PACKAGE_luci-app-ssr-plus_INCLUDE_Trojan
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

$(eval $(call BuildPackage,mysettings))
$(eval $(call BuildPackage,mysettings-router))
$(eval $(call BuildPackage,mysettings-proxy))
