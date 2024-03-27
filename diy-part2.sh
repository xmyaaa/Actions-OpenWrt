#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# Modify default theme
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate

echo '替换golang到1.22.x'
rm -rf feeds/packages/lang/golang
git clone -b 22.x --single-branch https://github.com/sbwml/packages_lang_golang feeds/packages/lang/golang
echo '=========Replace golang OK!========='

echo '替换Passwall软件'

echo '=========Replace passwall source OK!========='

echo '修改Passwall检测规则'
#sed -i 's/socket" "iptables-mod-//g' feeds/luci/applications/luci-app-passwall/root/usr/share/passwall/app.sh
echo '=========ALTER passwall denpendcies check OK!========='

echo '修改主机名'
#sed -i "s/hostname='ImmortalWrt'/hostname='RAX3000M'/g" package/base-files/files/bin/config_generate
#cat package/base-files/files/bin/config_generate |grep hostname=
echo '=========Alert hostname OK!========='

echo '修改默认IP'
#sed -i 's/ipad=${ipaddr:-"192.168.1.1"}/ipad=${ipaddr:-"192.168.10.1"}/g' package/base-files/files/bin/config_generate
#sed -i 's/addr_offset=2/addr_offset=8/g' package/base-files/files/bin/config_generate
#sed -i 's/${ipaddr:-"192.168.$((addr_offset++)).1"}/${ipaddr:-"192.168.$((addr_offset++)).1"}/g' package/base-files/files/bin/config_generate
#cat package/base-files/files/bin/config_generate |grep hostname=
echo '=========Alert Default IP OK!========='

# echo '开启sing-box的CGO标记'
# sed -i 's/CGO_ENABLED=0/CGO_ENABLED=1/g' feeds/passwall/sing-box/Makefile
# echo '=========Enable sing-box CGO FLAG OK !========='
