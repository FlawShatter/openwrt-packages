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
  DEPENDS:=+nano-plus +vim-fuller +luci-app-natter +luci-app-iptvhelper +luci-app-pgyvpn +luci-app-zerotier +luci-app-vnstat
endef

define Package/mysettings-router
$(call Package/mysettings/Default)
  TITLE:=Router packages select.
  DEPENDS:=+6rd +6to4 +kmod-shortcut-fe-cm \
  +luci-app-adguardhome +luci-app-advanced +luci-app-argon-config \
  +luci-app-autotimeset +luci-app-beardropper +luci-app-cloudflarespeedtest \
  +luci-app-commands +@TARGET_rockchip:luci-app-cpufreq +luci-app-ddnsto \
  +luci-app-design-config +luci-app-dnsfilter +luci-app-frpc +luci-app-frps \
  +luci-app-ikoolproxy +luci-app-irqbalance +luci-app-lucky +luci-app-minidlna \
  +luci-app-msd_lite +luci-app-netspeedtest +luci-app-onliner +luci-app-openclash \
  +luci-app-pppoe-relay +luci-app-pushbot +luci-app-ramfree +luci-app-smartdns \
  +luci-app-mosdns +luci-app-tencentddns +luci-app-uhttpd +luci-app-vlmcsd \
  +luci-app-vsftpd +luci-app-webadmin +luci-app-wolplus +luci-app-wrtbwmon \
  +luci-app-ipsec-vpnd +luci-app-openvpn +luci-app-openvpn-server +luci-app-privoxy \
  +luci-app-polipo +luci-app-tinyproxy +luci-app-phtunnel +luci-app-poweroff \
  +luci-app-unblockmusic \
  +@PACKAGE_luci-app-unblockmusic_INCLUDE_UnblockNeteaseMusic_Go \
  +@PACKAGE_luci-app-unblockmusic_INCLUDE_UnblockNeteaseMusic_NodeJS \
  +luci-app-turboacc \
  +@PACKAGE_luci-app-turboacc_INCLUDE_OFFLOADING \
  +@PACKAGE_luci-app-turboacc_INCLUDE_BBR_CCA \
  +@PACKAGE_luci-app-turboacc_INCLUDE_PDNSD \
  +@PACKAGE_luci-app-turboacc_INCLUDE_DNSFORWARDER \
  +@PACKAGE_luci-app-turboacc_INCLUDE_DNSPROXY \
  +luci-theme-argon +luci-theme-bootstrap +luci-theme-darkmatter +luci-theme-design +luci-theme-material +luci-theme-neobird
endef

define Package/mysettings-proxy
$(call Package/mysettings/Default)
  TITLE:=Proxy packages
  DEPENDS:=+luci-app-autoipsetadder +luci-app-wireguard \
  +luci-app-passwall \
  +@PACKAGE_luci-app-passwall_Iptables_Transparent_Proxy \
  +@PACKAGE_luci-app-passwall_INCLUDE_Brook \
  +@PACKAGE_luci-app-passwall_INCLUDE_ChinaDNS_NG \
  +@PACKAGE_luci-app-passwall_INCLUDE_Haproxy \
  +@PACKAGE_luci-app-passwall_INCLUDE_Hysteria \
  +@PACKAGE_luci-app-passwall_INCLUDE_NaiveProxy \
  +@PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Libev_Client \
  +@PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Libev_Server \
  +@PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Rust_Client \
  +@PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Rust_Server \
  +@PACKAGE_luci-app-passwall_INCLUDE_ShadowsocksR_Libev_Client \
  +@PACKAGE_luci-app-passwall_INCLUDE_ShadowsocksR_Libev_Server \
  +@PACKAGE_luci-app-passwall_INCLUDE_Simple_Obfs \
  +@PACKAGE_luci-app-passwall_INCLUDE_Trojan_GO \
  +@PACKAGE_luci-app-passwall_INCLUDE_Trojan_Plus \
  +@PACKAGE_luci-app-passwall_INCLUDE_V2ray \
  +@PACKAGE_luci-app-passwall_INCLUDE_V2ray_Geodata \
  +@PACKAGE_luci-app-passwall_INCLUDE_V2ray_Plugin \
  +@PACKAGE_luci-app-passwall_INCLUDE_Xray \
  +luci-app-ssr-plus \
  +@PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Rust_Client \
  +@PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Rust_Server \
  +@PACKAGE_luci-app-ssr-plus_INCLUDE_ChinaDNS_NG \
  +@PACKAGE_luci-app-ssr-plus_INCLUDE_Hysteria \
  +@PACKAGE_luci-app-ssr-plus_INCLUDE_IPT2Socks \
  +@PACKAGE_luci-app-ssr-plus_INCLUDE_Kcptun \
  +@PACKAGE_luci-app-ssr-plus_INCLUDE_NaiveProxy \
  +@PACKAGE_luci-app-ssr-plus_INCLUDE_Redsocks2 \
  +@PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Simple_Obfs \
  +@PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_V2ray_Plugin \
  +@PACKAGE_luci-app-ssr-plus_INCLUDE_ShadowsocksR_Libev_Client \
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
