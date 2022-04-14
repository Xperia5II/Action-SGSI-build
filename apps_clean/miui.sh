#!/bin/bash

LOCALDIR=`cd "$( dirname $0 )" && pwd`
cd $LOCALDIR

systemdir=$1

apps_dir="
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
"

for delete_dir in $apps_dir ;do
  find $systemdir -type d -name "$delete_dir" | xargs rm -rf
done

rm -rf $1/data-app/*
