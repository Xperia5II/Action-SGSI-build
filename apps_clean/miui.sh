#!/bin/bash

LOCALDIR=`cd "$( dirname $0 )" && pwd`
cd $LOCALDIR

systemdir=$1

apps_dir="
MIpay
MiuiBugReport
Camera
MIUIVideo
Music
QuickSearchBox
talkback
AiAsstVision
Cit
CatchLog
com.xiaomi.macro
HybridAccessory
HybridPlatform
"

for delete_dir in $apps_dir ;do
  find $systemdir -type d -name "$delete_dir" | xargs rm -rf
done

rm -rf $1/data-app/*
