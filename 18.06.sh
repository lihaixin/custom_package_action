#!/bin/bash
# 升级argon样式
git clone -b v1.7.2 https://github.com/jerrykuku/luci-theme-argon.git
# 添加udptools
git clone https://github.com/lihaixin/luci-app-udptools.git
svn co https://github.com/lihaixin/openwrt-udp2raw-speeder/trunk/udp2raw
svn co https://github.com/lihaixin/openwrt-udp2raw-speeder/trunk/udpspeeder
#添加openclash
git clone -b master https://github.com/vernesong/OpenClash.git
#添加hello world
git clone https://github.com/jerrykuku/lua-maxminddb.git
git clone https://github.com/jerrykuku/luci-app-vssr.git

#添加gost隧道
svn co https://github.com/immortalwrt/immortalwrt/branches/openwrt-19.07/package/ctcgfw/gost
svn co https://github.com/immortalwrt/immortalwrt/branches/openwrt-19.07/package/ctcgfw/luci-app-gost

#添加应用过滤
git clone https://github.com/destan19/OpenAppFilter.git
wget -N https://github.com/destan19/destan19.github.io/raw/main/assets/oaf/feature/feature.cfg -O ./OpenAppFilter/open-app-filter/files/feature.cfg
#添加限速功能
git clone https://github.com/garypang13/luci-app-eqos

#添加tmate
svn co https://github.com/immortalwrt/openwrt-tmate/trunk/tmate
svn co https://github.com/immortalwrt/openwrt-tmate/trunk/msgpack-c

rm -rf ./*/.git & rm -f ./*/.gitattributes
rm -rf ./*/.svn & rm -rf ./*/.github & rm -rf ./*/.gitignore
exit 0
