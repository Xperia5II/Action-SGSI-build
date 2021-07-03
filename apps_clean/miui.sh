#!/bin/bash

LOCALDIR=`cd "$( dirname $0 )" && pwd`
cd $LOCALDIR

systemdir=$1

apps_dir="
Mipay
MiuiBugReport
Camera
MiuiVideo
Music
QuickSearchBox
talkback
AiAsstVision
Cit
CatchLog
com.xiaomi.macro
HybridAccessory
HybridPlatform
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
MiService
MiShare
MiuiAod
MiGameCenterSDKService
ContentExtension
aiasst_service
NQNfcNci
slaservice
Tag
FM
mab
"

for delete_dir in $apps_dir ;do
  find $systemdir -type d -name "$delete_dir" | xargs rm -rf
done

rm -rf $1/data-app/*
