cd /Users/user/Applications/Roblox.app/Contents/MacOS
if [ ! -f RCOPATCHED ]; then
mv RobloxPlayer ActualRobloxPlayer
echo "#!/bin/sh" >> RobloxPlayer
echo "rm -rf /Users/user/Applications/Roblox.app/Contents/MacOS/ClientSettings && mkdir /Users/user/Applications/Roblox.app/Contents/MacOS/ClientSettings && curl https://roblox-client-optimizer.simulhost.com/ClientAppSettings.json -o /Users/user/Applications/Roblox.app/Contents/MacOS/ClientSettings/ClientAppSettings.json && exec /Users/user/Applications/Roblox.app/Contents/MacOS/ActualRobloxPlayer" >> RobloxPlayer
chmod +x RobloxPlayer
touch RCOPATCHED
echo "Finished installing RCO"
else
echo "You have already installed RCO!"
fi

