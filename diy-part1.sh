#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# fw876/helloworld
#13dd17fca148965d38f0d4e578b19679a7c4daa2  19.07.2  同3
#fb2f36306756d0d0782dcab8413a8bb7ec379e54  19.07.3  target.mk/maketool都不同 xy目录不同
#0d0ab01a64f25d15325d3c98a7df252085382f1d  19.07.4  maketool不同
#51f55b58b75b189f4f8810a827ca27a959e2192d  19.07.5 同7 target.mk/maketool
#6ba9740b61a3ca89355ae1b08f0456617e0ce3c0  19.07.6 同7 target.mk/maketool
sed -i 's/luci.git;openwrt-19.07/luci.git;openwrt-18.06/g' feeds.conf.default

# Lienol/openwrt-package
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
