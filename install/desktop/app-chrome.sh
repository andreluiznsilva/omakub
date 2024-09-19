# Browse the web with the most popular browser. See https://www.google.com/chrome/
ARCH=$(dpkg --print-architecture)
if [ "${ARCH}" == "amd64" ]; then
  cd /tmp
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
  sudo apt install -y ./google-chrome-stable_current_amd64.deb
  rm google-chrome-stable_current_amd64.deb
  xdg-settings set default-web-browser google-chrome.desktop
  cd -
else
  echo "Google Chrome does not provided a deb package for '${ARCH}' architecture"
fi
