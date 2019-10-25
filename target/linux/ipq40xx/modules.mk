#
# Copyright (C) 2006-2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

OTHER_MENU:=Other modules

define KernelPackage/qca8k-offload
  TITLE:=QCA8337 HW NAT offloading driver
  SUBMENU:=Network Devices
  DEPENDS:=@TARGET_ipq40xx +kmod-nf-conntrack
  KCONFIG:= \
	CONFIG_NET_DSA_QCA8K_OFFLOAD \
	CONFIG_NF_CONNTRACK_QCA8K
  FILES:= $(LINUX_DIR)/drivers/net/dsa/qca8k_offload/qca8k_offload.ko
  AUTOLOAD:=$(call AutoProbe,qca8k_offload)
endef

define KernelPackage/qca8k-offload/description
 This driver provides QCA8337 offloading support
endef

$(eval $(call KernelPackage,qca8k-offload))
