#!/bin/sh

targetFps=130
robloxPath="/Applications/Roblox.app"

if [ ! -d $robloxPath ]; then
  $robloxPath="~$robloxPath"

  if [ ! -d $robloxPath ]; then
    echo "Roblox installation folder couldn't be found."
    exit
  fi
fi

clientSettingsPath="$robloxPath/Contents/MacOS/ClientSettings"

if [ ! -d "$clientSettingsPath" ]; then
  mkdir $clientSettingsPath
fi

echo "{\"DFIntTaskSchedulerTargetFps\": $targetFps}" > "$clientSettingsPath/ClientAppSettings.json"
echo "The FPS unlocker has been installed in $robloxPath"
