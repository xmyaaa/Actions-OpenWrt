#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

echo '添加Passwall依赖feeds'

echo '=========Add passwall feeds source OK!========='

# Add a feed source
echo 'src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git' >>feeds.conf.default
#echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall.git' >>feeds.conf.default
#echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git' >>feeds.conf.default
#echo 'src-git passwall_luci https://github.com/xiaorouji/openwrt-passwall.git' >>feeds.conf.default
#echo 'src-git Openclash https://github.com/vernesong/OpenClash' >>feeds.conf.default


#sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
#sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
echo '=========Add passwall feeds source OK!========='

# Add a feed source
rm -rf package/helloworld
git clone --depth=1 https://github.com/fw876/helloworld.git package/helloworld

#取消掉feeds.conf.default文件里面的helloworld的#注释
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default  #使用源码自带ShadowSocksR Plus+出国软件


#添加自定义插件链接（自己想要什么就github里面搜索然后添加）
#git clone -b 18.06 https://github.com/garypang13/luci-theme-edge package/luci-theme-edge  #主题-edge-动态登陆界面
#git clone -b master https://github.com/vernesong/OpenClash.git package/luci-app-openclash  #openclash出国软件
#git clone https://github.com/frainzy1477/luci-app-clash package/luci-app-clash  #clash出国软件
#git clone https://github.com/tty228/luci-app-serverchan package/luci-app-serverchan  #微信推送
#git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns  #smartdns DNS加速


#passwall出国软件
#svn co https://github.com/xiaorouji/openwrt-package/trunk/lienol/luci-app-passwall package/luci-app-passwall
#svn co https://github.com/xiaorouji/openwrt-package/trunk/package/brook package/brook
#svn co https://github.com/xiaorouji/openwrt-package/trunk/package/chinadns-ng package/chinadns-ng
#svn co https://github.com/xiaorouji/openwrt-package/trunk/package/tcping package/tcping
#svn co https://github.com/xiaorouji/openwrt-package/trunk/package/trojan-go package/trojan-go
#svn co https://github.com/xiaorouji/openwrt-package/trunk/package/trojan-plus package/trojan-plus
#svn co https://github.com/xiaorouji/openwrt-package/trunk/package/syncthing package/syncthing

#git clone  -b mt7915_mtwifi --single-branch https://github.com/padavanonly/immortalwrt
