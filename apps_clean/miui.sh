#!/bin/bash

LOCALDIR=`cd "$( dirname $0 )" && pwd`
cd $LOCALDIR

systemdir=$1

apps_dir="
Camera
Mipay
MiuiBugReport
Browser
Camera
MiuiVideo
Music
MusicFX
QuickSearchBox
talkback
AiAsstVision
Cit
CatchLog
com.xiaomi.macro
HybridAccessory
HybridPlatform
mab
mi_connect_service
MiPlayClient
MiSound
MiuiAccessibility
MIUIgreenguard
MiuiVpnSdkManager
ModemTestBox
NextPay
PaymentService
ThemeModule
TSMClient
VoiceAssist
VoiceTrigger
YouDaoEngine
Backup
BackupRestoreConfirmation
CallLogBackup
Mirror
MiService
MiShare
MiuiAod
MiGameCenterSDKService
YellowPage
ContentExtension
aiasst_service
"

for delete_dir in $apps_dir ;do
  find $systemdir -type d -name "$delete_dir" | xargs rm -rf
done

rm -rf $1/data-app/*
