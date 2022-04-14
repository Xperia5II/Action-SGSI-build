#!/bin/bash

LOCALDIR=`cd "$( dirname $0 )" && pwd`
cd $LOCALDIR

systemdir=$1

apps_dir="
YouDaoEngine
Backup
BackupRestoreConfirmation
CallLogBackup
MIService
MIShare
MIUIAod
MiGameCenterSDKService
ContentExtension
aiasst_service
NQNfcNci
slaservice
Tag
FM
mab
MaintenanceMode
MIUIAccessibility
Mirror
MiLink
SogouInput
XiaomiModemDebugService
Browser
MIUIPersonalAssistant
MIUIContentExtension
MIUITouchAssistant
"

for delete_dir in $apps_dir ;do
  find $systemdir -type d -name "$delete_dir" | xargs rm -rf
done

rm -rf $1/data-app/*
