# Gum is used for the Omakub commands for tailoring Omakub after the initial install
ARCH=$(dpkg --print-architecture)
cd /tmp
GUM_VERSION="0.14.3" # Use known good version
wget -qO gum.deb "https://github.com/charmbracelet/gum/releases/download/v${GUM_VERSION}/gum_${GUM_VERSION}_${ARCH}.deb"
sudo apt-get install -y ./gum.deb
rm gum.deb
cd -
