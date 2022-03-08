#!/bin/bash
#=================================================
#   Description: DIY script
#   Lisence: MIT
#   Author: P3TERX
#   Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

sed -i 's/+IPV6:luci-proto-ipv6 //g' feeds/luci/collections/luci/Makefile
sed -i 's/16384/65535/g' package/kernel/linux/files/sysctl-nf-conntrack.conf
sed -i 's/luci-theme-bootstrap/luci-theme-argon-light-mod/g' feeds/luci/collections/luci/Makefile
sed -i 's/IMG_PREFIX:=$(VERSION_DIST_SANITIZED)/IMG_PREFIX:=XP9-Sale-$(shell date +%F-%H)-$(VERSION_DIST_SANITIZED)/g' include/image.mk

svn export https://github.com/lllrrr/myok/trunk/default-settings package/lean/default-settings
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/ddns-scripts_aliyun package/lean/ddns-scripts_aliyun
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/ddns-scripts_dnspod package/lean/ddns-scripts_dnspod
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/default-settings package/lean/default-settings
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-arpbind package/lean/luci-app-arpbind
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/adbyby package/lean/adbyby
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-adbyby-plus package/lean/luci-app-adbyby-plus
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-autoreboot package/lean/luci-app-autoreboot
#svn export https://github.com/Lienol/openwrt/trunk/package/lean/luci-app-autoreboot package/lean/luci-app-autoreboot
svn export https://github.com/Lienol/openwrt-package/branches/other/lean/luci-app-autoreboot package/lean/luci-app-autoreboot
#svn export https://github.com/coolsnowwolf/lede/trunk/package/lean/frp package/lean/frp
svn export https://github.com/coolsnowwolf/packages/trunk/net/frp package/lean/frp
sed -i 's/..\/..\/lang/$(TOPDIR)\/feeds\/packages\/lang/g' package/lean/frp/Makefile
#sed -i 's/0.32.1/0.33.0/g' package/lean/frp/Makefile
#sed -i 's/3a6ef59163f5a1d41b67908269e924000a8ccb2984e4bdfc18bd1405b5dbaf22/9c773ab4bbd208705c795599c5e69302a379734921c90489ed8ae331c24836cb/g' package/lean/frp/Makefile
svn export https://github.com/coolsnowwolf/luci/trunk/applications/luci-app-frpc package/lean/luci-app-frpc
sed -i 's/..\/..\/luci/$(TOPDIR)\/feeds\/luci\/luci/g' package/lean/luci-app-frpc/Makefile
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-frps package/lean/luci-app-frps
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-mwan3helper package/lean/luci-app-mwan3helper
#git clone https://github.com/fw876/helloworld package/lean/helloworld
rm -rf package/lean/helloworld/naiveproxy
rm -rf package/lean/helloworld/shadowsocksr-libev
rm -rf package/lean/helloworld/shadowsocks-rust
rm -rf package/lean/helloworld/tcping
rm -rf package/lean/helloworld/v2ray-core
rm -rf package/lean/helloworld/v2ray-plugin
rm -rf package/lean/helloworld/xray-core
rm -rf package/lean/helloworld/xray-plugin
##svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/srelay package/lean/srelay
##svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/tcpping package/lean/tcpping
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/npc package/lean/npc
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-nps package/lean/luci-app-nps
svn export https://github.com/coolsnowwolf/luci/trunk/applications/luci-app-wrtbwmon package/lean/luci-app-wrtbwmon
sed -i 's/..\/..\/luci/$(TOPDIR)\/feeds\/luci\/luci/g' package/lean/luci-app-wrtbwmon/Makefile
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-zerotier package/lean/luci-app-zerotier
##svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-lib-fs package/lean/luci-lib-fs
##svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/microsocks package/lean/microsocks
##svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/redsocks2 package/lean/redsocks2
git clone https://github.com/Mattraks/openwrt-passwall package/openwrt-passwall
#rm -rf package/openwrt-passwall/luci-app-passwall
#rm -rf package/openwrt-passwall/naiveproxy
#svn co https://github.com/fw876/helloworld/trunk/naiveproxy package/lean/naiveproxy
#git clone https://github.com/lllrrr/mypsw36m package/mypsw36m
sed -i 's/PassWall/通行证/g' package/openwrt-passwall/luci-app-passwall/po/zh-cn/passwall.po
##git clone https://github.com/Lienol/openwrt-package package/openwrt-package
svn export https://github.com/lllrrr/mypsw/trunk/theme package/lean/theme
svn export https://github.com/lllrrr/myok/trunk/luci-app-autoupdate package/lean/luci-app-autoupdate
#svn co https://github.com/lllrrr/myttyd/trunk/luci-app-terminal package/lean/luci-app-terminal
#git clone https://github.com/vernesong/OpenClash package/lean/OpenClash
#git clone https://github.com/destan19/OpenAppFilter package/lean/OpenAppFilter
#git clone https://github.com/tty228/luci-app-serverchan package/lean/luci-app-serverchan
rm -rf feeds/packages/lang/golang/
svn export https://github.com/openwrt/packages/trunk/lang/golang feeds/packages/lang/golang
#rm -rf feeds/packages/libs/libcap/
#svn co https://github.com/openwrt/packages/branches/openwrt-19.07/libs/libcap feeds/packages/libs/libcap
rm -rf feeds/packages/net/haproxy/
svn export https://github.com/openwrt/packages/trunk/net/haproxy feeds/packages/net/haproxy
svn export https://github.com/openwrt/openwrt/trunk/package/utils/lua5.3 package/utils/lua5.3
rm -rf package/network/utils/curl/
svn export https://github.com/openwrt/packages/branches/openwr21.2/net/curl package/network/utils/curl
#rm -rf feeds/packages/utils/ttyd/
#svn co https://github.com/openwrt/packages/trunk/utils/ttyd feeds/packages/utils/ttyd
svn export https://github.com/Lienol/openwrt/branches/19.07/tools/ucl tools/ucl
svn export https://github.com/Lienol/openwrt/branches/19.07/tools/upx tools/upx
svn export https://github.com/Lienol/openwrt/branches/19.07/tools/ninja tools/ninja
cp $GITHUB_WORKSPACE/comm/Makefile tools/
#git clone https://github.com/jerrykuku/luci-app-vssr package/lean/luci-app-vssr
#git clone https://github.com/jerrykuku/lua-maxminddb package/lean/lua-maxminddb
#git clone https://github.com/garypang13/openwrt-bypass package/lean/openwrt-bypass
#git clone https://github.com/lllrrr/myopenwrt-bypass package/lean/openwrt-bypass
git clone https://github.com/lllrrr/myow package/lean/myow
#sed -i 's/Bypass/旁路/g' package/lean/openwrt-bypass/luci-app-bypass/luasrc/controller/bypass.lua
git clone https://github.com/lllrrr/myfrpmod package/lean/frpmod
rm -rf feeds/packages/net/kcptun/
#git clone https://github.com/lllrrr/mysmartdns package/mysmartdns
#git clone https://github.com/pymumu/openwrt-smartdns package/lean/openwrt-smartdns
#git clone -b lede https://github.com/pymumu/luci-app-smartdns package/lean/luci-app-smartdns
cp $GITHUB_WORKSPACE/comm/target.mk include/
cp $GITHUB_WORKSPACE/zzz-default-settings package/lean/default-settings/files/zzz-default-settings
sed -i "s/R8.3.19.0410/XP9.$(date "+%y.%m%d.%H")/g" package/lean/default-settings/files/zzz-default-settings
sed -i "s/R8.3.19.0410/XP9.$(date "+%y.%m%d.%H")/g" files/etc/banner
