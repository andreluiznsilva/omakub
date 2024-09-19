# Make video calls using https://zoom.us/
ARCH=$(dpkg --print-architecture)
if [ "${ARCH}" == "amd64" ]; then
  cd /tmp
  wget https://zoom.us/client/latest/zoom_${ARCH}.deb
  sudo apt install -y ./zoom_${ARCH}.deb
  rm zoom_${ARCH}.deb
  cd -
else
  echo "Zoom does not provided a deb package for '${ARCH}' architecture"
fi
