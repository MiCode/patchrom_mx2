
# Makefile for mx2
#

# The original zip file, MUST be specified by each product
local-zip-file := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_mx2.zip

#
local-miui-modified-apps := MiuiSystemUI Phone Bluetooth Settings MiuiHome MiuiGallery Notes Mms Music \
		VpnDialogs

# All apps from original ZIP, but has smali files chanded
local-modified-apps := SettingsProvider Gallery2 ActionAssist

# All apks from MIUI
local-miui-removed-apps := SettingsProvider MediaProvider

# All apps need to be removed from original ZIP file
local-phone-apps := ApplicationsProvider BackupRestoreConfirmation Bluetooth DrmProvider MediaProvider \
		SharedStorageBackup UserDictionaryProvider WAPPushManager LiveWallpapersPicker DefaultContainerService \
		CertInstaller Stk DLNAServer SettingsProvider Gallery2 MzInput2 VoiceSearch KeyChain InputDevices

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip:=

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

#override 

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-zip-misc:
	@echo add recovery
	cp -rf other/recovery/res $(ZIP_DIR)/system/media
	cp -f other/recovery/recovery $(ZIP_DIR)/system/xbin
	cp -f other/recovery/recovery.fstab $(ZIP_DIR)/system/etc
	cp -f other/recovery/install-recovery.sh $(ZIP_DIR)/system/etc
	@echo customize build.prop
	cp -f other/build.prop $(ZIP_DIR)/system
	@echo replace bootanimation
	cp -f other/bootanimation $(ZIP_DIR)/system/bin
	@echo replace LiveWallpapersPicker
	cp -f other/LiveWallpapersPicker.apk $(ZIP_DIR)/system/app

out/framework2.jar : out/framework.jar

%.phone : out/%.jar
	@echo push -- to --- phone
	adb remount
	adb push $< /system/framework
	adb shell chmod 644 /system/framework/$*.jar

%.sign-plat : out/%
	java -jar $(TOOL_DIR)/signapk.jar $(PORT_ROOT)/build/security/platform.x509.pem $(PORT_ROOT)/build/security/platform.pk8  $< $<.signed
	@echo push -- to --- phone
	adb remount
	adb push $<.signed /data/local/tmp/$*
	adb shell chmod 644 /data/local/tmp/$*
	adb shell busybox mv -f /data/local/tmp/$* /system/app
	
