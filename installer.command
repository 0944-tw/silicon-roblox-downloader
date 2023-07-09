
#!/bin/bash
echo "Native Roblox Installer for Apple Silicon Mac"
echo "============================================"
echo "Fetching Latest Version"
# Fetch Latest Version
studio_version=$(curl -s http://setup.rbxcdn.com/channel/zmacarm64/mac/arm64/versionStudio)
client_version=$(curl -s setup.rbxcdn.com/channel/zmacarm64/mac/arm64/version)
channel="arm64"
echo "Latest Roblox Studio Version: $studio_version"
echo "Latest Roblox Client Version: $client_version"
echo "+ ================== +"
echo "CHANNEL : ${channel}"
#  Prompt User to Pick an Option
echo "============================="
echo "Please pick an option:"
echo "1. Roblox Studio"
echo "2. Roblox Client"
read -p "Enter 1 or 2: " option


if [[ $option == "1" ]]; then
  download_url="http://setup.rbxcdn.com/channel/zmacarm64/mac/${channel}/${studio_version}-RobloxStudio.zip"
  echo "Downloading Roblox Studio..."
elif [[ $option == "2" ]]; then
  download_url="http://setup.rbxcdn.com/channel/zmacarm64/mac/${channel}/${client_version}-RobloxPlayer.zip"
  echo "Downloading Roblox Client..."
else
  echo "Invalid Options"
  exit 1
fi

wget -P ~/Downloads $download_url
