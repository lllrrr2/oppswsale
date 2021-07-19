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
sed -i 's/IMG_PREFIX:=$(VERSION_DIST_SANITIZED)/IMG_PREFIX:=XB9-Sale-$(shell date +%F-%H)-$(VERSION_DIST_SANITIZED)/g' include/image.mk

svn co https://github.com/lllrrr/myok/trunk/default-settings package/lean/default-settings
#git clone https://github.com/lllrrr/mysale package/sale
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/ddns-scripts_aliyun package/lean/ddns-scripts_aliyun
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/ddns-scripts_dnspod package/lean/ddns-scripts_dnspod
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/default-settings package/lean/default-settings
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-arpbind package/lean/luci-app-arpbind
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/adbyby package/lean/adbyby
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-adbyby-plus package/lean/luci-app-adbyby-plus
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-autoreboot package/lean/luci-app-autoreboot
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/frp package/lean/frp
#sed -i 's/0.32.1/0.33.0/g' package/lean/frp/Makefile
#sed -i 's/3a6ef59163f5a1d41b67908269e924000a8ccb2984e4bdfc18bd1405b5dbaf22/9c773ab4bbd208705c795599c5e69302a379734921c90489ed8ae331c24836cb/g' package/lean/frp/Makefile
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-frpc package/lean/luci-app-frpc
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-frps package/lean/luci-app-frps
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-mwan3helper package/lean/luci-app-mwan3helper
#git clone https://github.com/fw876/helloworld package/lean/helloworld
##svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/srelay package/lean/srelay
##svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/tcpping package/lean/tcpping
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/npc package/lean/npc
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-nps package/lean/luci-app-nps
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-wrtbwmon package/lean/luci-app-wrtbwmon
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-zerotier package/lean/luci-app-zerotier
##svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-lib-fs package/lean/luci-lib-fs
##svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/microsocks package/lean/microsocks
##svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/redsocks2 package/lean/redsocks2
git clone https://github.com/xiaorouji/openwrt-passwall package/openwrt-passwall
#git clone https://github.com/lllrrr/myopenwrt-passwall package/openwrt-passwall
#rm -rf package/openwrt-passwall/luci-app-passwall
#rm -rf package/openwrt-passwall/naiveproxy
#svn co https://github.com/fw876/helloworld/trunk/naiveproxy package/lean/naiveproxy
#git clone https://github.com/lllrrr/mypsw36m package/mypsw36m
#sed -i 's/PassWall/通行证/g' package/openwrt-passwall/luci-app-passwall/po/zh-cn/passwall.po
##git clone https://github.com/Lienol/openwrt-package package/openwrt-package
svn co https://github.com/lllrrr/mypsw/trunk/theme package/lean/theme
#svn co https://github.com/lllrrr/myttyd/trunk/luci-app-terminal package/lean/luci-app-terminal
#git clone https://github.com/vernesong/OpenClash package/lean/OpenClash
#git clone https://github.com/destan19/OpenAppFilter package/lean/OpenAppFilter
#git clone https://github.com/tty228/luci-app-serverchan package/lean/luci-app-serverchan
rm -rf feeds/packages/lang/golang/
svn co https://github.com/openwrt/packages/trunk/lang/golang feeds/packages/lang/golang
rm -rf feeds/packages/libs/libcap/
svn co https://github.com/openwrt/packages/branches/openwrt-19.07/libs/libcap feeds/packages/libs/libcap
rm -rf feeds/packages/net/haproxy/
svn co https://github.com/openwrt/packages/trunk/net/haproxy feeds/packages/net/haproxy
svn co https://github.com/openwrt/openwrt/trunk/package/utils/lua5.3 package/utils/lua5.3
rm -rf package/network/utils/curl/
svn co https://github.com/openwrt/packages/trunk/net/curl package/network/utils/curl
#rm -rf feeds/packages/utils/ttyd/
#svn co https://github.com/openwrt/packages/trunk/utils/ttyd feeds/packages/utils/ttyd
svn co https://github.com/Lienol/openwrt/branches/19.07/tools/ucl tools/ucl
svn co https://github.com/Lienol/openwrt/branches/19.07/tools/upx tools/upx
cp ../comm/Makefile tools/
#git clone https://github.com/jerrykuku/luci-app-vssr package/lean/luci-app-vssr
#git clone https://github.com/jerrykuku/lua-maxminddb package/lean/lua-maxminddb
git clone https://github.com/garypang13/openwrt-bypass package/lean/openwrt-bypass
#git clone https://github.com/lllrrr/myopenwrt-bypass package/lean/openwrt-bypass
sed -i 's/Bypass/旁路/g' package/lean/luci-app-bypass/luasrc/controller/bypass.lua
git clone https://github.com/lllrrr/myfrpmod package/lean/frpmod
rm -rf feeds/packages/net/kcptun/
#git clone https://github.com/lllrrr/mysmartdns package/mysmartdns
#git clone https://github.com/pymumu/openwrt-smartdns package/lean/openwrt-smartdns
#git clone -b lede https://github.com/pymumu/luci-app-smartdns package/lean/luci-app-smartdns
cp ../comm/target.mk include/
cp ../zzz-default-settings package/lean/default-settings/files/zzz-default-settings
sed -i "s/R8.3.19.0410/XB9.$(date "+%y.%m%d.%H")/g" package/lean/default-settings/files/zzz-default-settings
sed -i "s/R8.3.19.0410/XB9.$(date "+%y.%m%d.%H")/g" files/etc/banner
