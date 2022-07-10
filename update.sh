#!/bin/bash
function mvdir() {
mv -n `find $1/* -maxdepth 0 -type d` ./
rm -rf $1
}
# 自动添加不能访问的网站到gfwlist转发链
git clone --depth 1 https://github.com/rufengsuixing/luci-app-autoipsetadder
# 控制dropbear的登录
git clone --depth 1 https://github.com/NateLol/luci-app-beardropper
#  融合IPTV到家庭局域网
git clone --depth 1 https://github.com/riverscn/openwrt-iptvhelper && mvdir openwrt-iptvhelper
# sms
git clone --depth 1 https://github.com/4IceG/luci-app-sms-tool smstool && mvdir smstool
# easymesh
git clone --depth 1 https://github.com/ntlf9t/luci-app-easymesh
# pushbot推送消息
git clone --depth 1 https://github.com/zzsj0928/luci-app-pushbot
# 纯OpenWRT实现的homebridge用于将米家的智能家居添加到Apple的HomeKit中
git clone --depth 1 https://github.com/shanglanxin/luci-app-homebridge
# koolproxyR广告过滤
git clone --depth 1 https://github.com/jefferymvp/luci-app-koolproxyR
# 设置OpenWRT按时执行某个操作
git clone --depth 1 https://github.com/sirpdboy/luci-app-autotimeset
# OpenWRT rTorrent客户端
git clone --depth 1 https://github.com/wolandmaster/luci-app-rtorrent
# OAF应用过滤
git clone --depth 1 https://github.com/destan19/OpenAppFilter && mvdir OpenAppFilter
# 关机插件
git clone --depth 1 https://github.com/esirplayground/luci-app-poweroff
# WIFIDOG的luci管理界面 WIFI认证
git clone --depth 1 https://github.com/walkingsky/luci-wifidog luci-app-wifidog
# OpenWRT自动中继网络
git clone --depth 1 https://github.com/peter-tank/luci-app-autorepeater
# MosDNS
# git clone --depth 1 https://github.com/QiuSimons/openwrt-mos && mvdir openwrt-mos
svn co https://github.com/QiuSimons/openwrt-mos/trunk/luci-app-mosdns
svn co https://github.com/QiuSimons/openwrt-mos/trunk/mosdns
# SmartDNS
git clone -b lede https://github.com/pymumu/luci-app-smartdns
svn co https://github.com/immortalwrt/packages/trunk/net/smartdns
# 在 OpenWrt 上修改 HTTP 流量的 UA
git clone --depth 1 https://github.com/CHN-beta/xmurp-ua
# 哪吒面板
git clone --depth 1 https://github.com/Erope/openwrt_nezha && mvdir openwrt_nezha
# LUCI主题
git clone --depth 1 https://github.com/Leo-Jo-My/luci-theme-argon-dark-mod
git clone --depth 1 https://github.com/hyy-666/luci-theme-Butterfly-dark
git clone --depth 1 https://github.com/apollo-ng/luci-theme-darkmatter
git clone --depth 1 https://github.com/jerrykuku/luci-theme-argon -b 18.06
git clone --depth 1 https://github.com/thinktip/luci-theme-neobird
git clone --depth 1 https://github.com/lynxnexy/luci-theme-tano
svn co https://github.com/Carseason/openwrt-themedog/trunk/luci/luci-themedog luci-theme-dog
# git clone --depth 1 https://github.com/kiddin9/luci-theme-edge
# git clone --depth 1 https://github.com/kenzok78/luci-theme-argonne
# svn co https://github.com/liuran001/openwrt-theme/trunk/luci-theme-argon-lr
# svn co https://github.com/kenzok8/litte/trunk/luci-theme-argon_new
# svn co https://github.com/kenzok8/litte/trunk/luci-theme-opentopd_new
# svn co https://github.com/kenzok8/litte/trunk/luci-theme-atmaterial_new
# svn co https://github.com/kenzok8/litte/trunk/luci-theme-mcat
# svn co https://github.com/kenzok8/litte/trunk/luci-theme-tomato
git clone --depth 1 https://github.com/jerrykuku/luci-app-argon-config
# 无WIFIDOG实现WIFI认证
git clone --depth 1 https://github.com/tty228/luci-app-nodogsplash
# OUI
git clone --depth 1 https://github.com/zhaojh329/oui
# PassWall1&2及其依赖
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall -b packages packages && mvdir packages
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall -b luci openwrt-passwall && mvdir openwrt-passwall
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall2 && mvdir openwrt-passwall2
# my-diy仓库
git clone --depth 1 https://github.com/hyy-666/my-diy -b qt6 && mvdir my-diy
rm -rf ./luci-app-eqos
# eqos
git clone --depth 1 https://github.com/TorBoxCode/luci-app-eqos luci-app-eqos
# filebrowser文件管理器
git clone --depth 1 https://github.com/immortalwrt/openwrt-filebrowser && mvdir openwrt-filebrowser
# 基于dnsmasq的去广告程序
git clone --depth 1 https://github.com/kiddin9/luci-app-dnsfilter
# OpenWRT 订阅转换
git clone --depth 1 https://github.com/WYC-2020/openwrt-subconverter && mvdir openwrt-subconverter
# git clone --depth 1 https://github.com/kiddin9/openwrt-bypass && mvdir openwrt-bypass
# git clone --depth 1 https://github.com/kiddin9/aria2
# git clone --depth 1 https://github.com/kiddin9/luci-app-baidupcs-web
# git clone --depth 1 https://github.com/kiddin9/qBittorrent-Enhanced-Edition
# git clone --depth 1 https://github.com/kiddin9/autoshare && mvdir autoshare
# git clone --depth 1 https://github.com/kiddin9/openwrt-openvpn && mvdir openwrt-openvpn
# git clone --depth 1 https://github.com/kiddin9/luci-app-xlnetacc
# git clone --depth 1 https://github.com/Lienol/openwrt-package
# git clone --depth 1 https://github.com/BoringCat/luci-app-mentohust
# git clone --depth 1 https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk
# git clone --depth 1 https://github.com/rufengsuixing/luci-app-usb3disable
# git clone --depth 1 https://github.com/silime/luci-app-xunlei
# git clone --depth 1 https://github.com/BCYDTZ/luci-app-UUGameAcc
# git clone --depth 1 https://github.com/jerrykuku/luci-app-vssr
# git clone --depth 1 https://github.com/peter-tank/luci-app-dnscrypt-proxy2
# 配置文件级别的设置修改插件
git clone --depth 1 https://github.com/sirpdboy/luci-app-advanced
# git clone --depth 1 https://github.com/sirpdboy/luci-app-netdata
# git clone --depth 1 https://github.com/NateLol/luci-app-oled
# git clone --depth 1 https://github.com/hubbylei/luci-app-clash
# git clone --depth 1 https://github.com/sensec/luci-app-udp2raw
# git clone --depth 1 https://github.com/LGA1150/openwrt-sysuh3c && mvdir openwrt-sysuh3c
# git clone --depth 1 https://github.com/gdck/luci-app-cupsd cupsd1 && mv -n cupsd1/luci-app-cupsd cupsd1/cups/cups ./ ; rm -rf cupsd1
# git clone --depth 1 https://github.com/kenzok78/udp2raw
# git clone --depth 1 https://github.com/kiddin9/luci-app-wizard
# git clone --depth 1 https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic
# git clone --depth 1 https://github.com/kenzok78/openwrt-minisign
# git clone --depth 1 https://github.com/kenzok78/luci-app-argonne-config
# git clone --depth 1 https://github.com/sundaqiang/openwrt-packages && mv -n openwrt-packages/luci-* ./; rm -rf openwrt-packages
# git clone --depth 1 https://github.com/DevOpenWRT-Router/luci-app-cpulimit
# 锐捷认证相关
# git clone --depth 1 https://github.com/BoringCat/luci-app-minieap
# git clone --depth 1 https://github.com/ysc3839/luci-proto-minieap
# 广告过滤
# git clone --depth 1 https://github.com/project-lede/luci-app-godproxy
# 在线用户统计
# git clone --depth 1 https://github.com/rufengsuixing/luci-app-onliner
# 闪讯拨号
# git clone --depth 1 https://github.com/CCnut/feed-netkeeper && mvdir feed-netkeeper

# nft-qos
svn co https://github.com/x-wrt/packages/trunk/net/nft-qos
svn co https://github.com/x-wrt/luci/trunk/applications/luci-app-nft-qos
# openClash
svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash
# dockerman
svn co https://github.com/lisaac/luci-app-dockerman/trunk/applications/luci-app-dockerman
# 阿里网盘Webdav挂载
svn co https://github.com/messense/aliyundrive-webdav/trunk/openwrt aliyundrive && mvdir aliyundrive
# amule 电驴
# svn co https://github.com/immortalwrt/packages/trunk/net/amule
# svn co https://github.com/immortalwrt/luci/trunk/applications/luci-app-amule
# 电驴反吸血
# svn co https://github.com/immortalwrt/packages/trunk/net/antileech
# CloudFlare CDN 测速
svn co https://github.com/immortalwrt/packages/trunk/net/cdnspeedtest
# koolshare ddns穿透
svn co https://github.com/sirpdboy/sirpdboy-package/trunk/luci-app-koolddns
# AdguardHome广告过滤
svn co https://github.com/kenzok8/jell/trunk/luci-app-adguardhome
svn co https://github.com/kenzok8/jell/trunk/adguardhome
# 易有云软件中心
svn co https://github.com/kenzok8/small-package/trunk/luci-app-store
svn co https://github.com/linkease/istore-ui/trunk/app-store-ui
# S.M.A.R.T监控软件
svn co https://github.com/animefansxj/luci-app-smartinfo/trunk/luci-dir/applications/luci-app-smartinfo
# 网络测速
svn co https://github.com/hyy-666/netspeedtest/trunk/luci-app-netspeedtest
# 易有云ddnsto linkease
svn co https://github.com/linkease/nas-packages/trunk/network/services && mvdir services
svn co https://github.com/linkease/nas-packages-luci/trunk/luci && mvdir luci
# lean的ssr-plus
svn co https://github.com/fw876/helloworld/trunk/luci-app-ssr-plus
# immortalwrt luci-app-syncthing
svn co https://github.com/immortalwrt/luci/branches/openwrt-18.06-k5.4/applications/luci-app-syncthing
# svn co https://github.com/doushang/luci-app-shortcutmenu/trunk/luci-app-shortcutmenu
# svn co https://github.com/sundaqiang/openwrt-packages/trunk/luci-app-services-wolplus
# svn co https://github.com/Ysurac/openmptcprouter-feeds/trunk/luci-app-iperf
# svn co https://github.com/Lienol/openwrt-package/branches/other/lean/luci-app-autoreboot
# svn co https://github.com/fw876/helloworld/trunk/luci-app-ssr-plus
# svn co https://github.com/Tencent-Cloud-Plugins/tencentcloud-openwrt-plugin-ddns/trunk/tencentcloud_ddns luci-app-tencentddns
# svn co https://github.com/coolsnowwolf/lede/trunk/package/network/services/shellsync
# svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/microsocks
# svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/redsocks2
# svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/tcpping
# svn co https://github.com/openwrt/packages/trunk/net/shadowsocks-libev
# svn co https://github.com/immortalwrt/luci/trunk/applications/luci-app-aliddns
# svn co https://github.com/immortalwrt/packages/trunk/admin/bpytop
# svn co https://github.com/immortalwrt/packages/trunk/libs/jpcre2
# svn co https://github.com/immortalwrt/packages/trunk/libs/wxbase
# svn co https://github.com/immortalwrt/packages/trunk/libs/libcron
# svn co https://github.com/immortalwrt/packages/trunk/libs/rapidjson
# svn co https://github.com/immortalwrt/packages/trunk/libs/quickjspp
# svn co https://github.com/immortalwrt/packages/trunk/libs/toml11
# svn co https://github.com/kiddin9/openwrt-packages/trunk/UnblockNeteaseMusic
# svn co https://github.com/kiddin9/openwrt-packages/trunk/qtbase
# svn co https://github.com/kiddin9/openwrt-packages/trunk/qttools
# svn co https://github.com/kiddin9/openwrt-packages/trunk/rblibtorrent
# svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-advancedsetting
# svn co https://github.com/openwrt/luci/trunk/protocols/luci-proto-modemmanager

rm -rf ./*/.git & rm -f ./*/.gitattributes
rm -rf ./*/.svn & rm -rf ./*/.github & rm -rf ./*/.gitignore
exit 0