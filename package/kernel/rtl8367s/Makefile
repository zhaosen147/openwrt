include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk

PKG_NAME:=switch-rtl8367s
PKG_RELEASE:=1
PKG_MAINTAINER:=
PKG_LICENSE:=GPL-2.0

include $(INCLUDE_DIR)/package.mk

define KernelPackage/switch-rtl8367s
  SUBMENU:=Network Devices
  TITLE:=RTL8367S/C Switch PHY driver
  FILES:=$(PKG_BUILD_DIR)/rtl8367s_gsw.ko
  AUTOLOAD:=$(call AutoProbe,rtl8367s_gsw)
  DEPENDS:=@TARGET_ramips
endef

MAKE_OPTS:= \
	ARCH="$(LINUX_KARCH)" \
	CROSS_COMPILE="$(TARGET_CROSS)" \
	M="$(PKG_BUILD_DIR)"

define Build/Compile
	$(MAKE) -C "$(LINUX_DIR)" \
			$(MAKE_OPTS) \
			CONFIG_RTL8367S_GSW=m \
			modules
endef

$(eval $(call KernelPackage,switch-rtl8367s))
