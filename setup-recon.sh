#!/usr/bin/env bash

set -uo pipefail

echo "======================================"
echo " Ubuntu Recon Environment Installer"
echo "======================================"

##############################################
# Helpers
##############################################

install_go_tool() {
    TOOL="$1"

    echo
    echo "Installing $TOOL"

    if go install "$TOOL"; then
        echo "✓ Installed"
    else
        echo "✗ Failed"
    fi
}

##############################################
# System Update
##############################################

sudo apt update
sudo apt upgrade -y

##############################################
# Core Packages
##############################################

sudo apt install -y \
git \
curl \
wget \
unzip \
zip \
jq \
yq \
tree \
ripgrep \
fd-find \
parallel \
sqlite3 \
python3 \
python3-pip \
python3-venv \
golang-go \
build-essential \
dnsutils \
whois \
net-tools \
traceroute \
tcpdump \
tshark \
nmap \
masscan \
whatweb \
ffuf \
feroxbuster \
gobuster \
dirsearch \
seclists

##############################################
# Ensure Go PATH
##############################################

if ! grep -q "go/bin" ~/.bashrc ; then
    echo 'export PATH=$PATH:$HOME/go/bin' >> ~/.bashrc
fi

export PATH=$PATH:$HOME/go/bin

##############################################
# ProjectDiscovery
##############################################

install_go_tool github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
install_go_tool github.com/projectdiscovery/httpx/cmd/httpx@latest
install_go_tool github.com/projectdiscovery/dnsx/cmd/dnsx@latest
install_go_tool github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
install_go_tool github.com/projectdiscovery/katana/cmd/katana@latest
install_go_tool github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest
install_go_tool github.com/projectdiscovery/tlsx/cmd/tlsx@latest
install_go_tool github.com/projectdiscovery/cdncheck/cmd/cdncheck@latest
install_go_tool github.com/projectdiscovery/uncover/cmd/uncover@latest
install_go_tool github.com/projectdiscovery/asnmap/cmd/asnmap@latest
install_go_tool github.com/projectdiscovery/mapcidr/cmd/mapcidr@latest

##############################################
# Tomnomnom
##############################################

install_go_tool github.com/tomnomnom/assetfinder@latest
install_go_tool github.com/tomnomnom/waybackurls@latest
install_go_tool github.com/tomnomnom/httprobe@latest
install_go_tool github.com/tomnomnom/anew@latest
install_go_tool github.com/tomnomnom/unfurl@latest
install_go_tool github.com/tomnomnom/qsreplace@latest
install_go_tool github.com/tomnomnom/gf@latest

##############################################
# Additional Go Tools
##############################################

install_go_tool github.com/lc/gau/v2/cmd/gau@latest
install_go_tool github.com/hakluke/hakrawler@latest
install_go_tool github.com/sensepost/gowitness@latest
install_go_tool github.com/003random/getJS@latest
install_go_tool github.com/lc/subjs@latest

##############################################
# Python Packages
##############################################

python3 -m pip install --upgrade pip

pip3 install \
requests \
httpx \
beautifulsoup4 \
lxml \
playwright \
selenium \
dnspython \
python-whois \
shodan \
censys \
rich \
pandas \
arjun \
trufflehog

##############################################
# Playwright Browsers
##############################################

playwright install

##############################################
# Nuclei Templates
##############################################

if command -v nuclei >/dev/null 2>&1; then
    nuclei -update-templates
fi

##############################################
# Useful Wordlists
##############################################

mkdir -p ~/wordlists

if [ ! -d ~/wordlists/SecLists ]; then
    git clone https://github.com/danielmiessler/SecLists.git ~/wordlists/SecLists
fi

##############################################
# Verify
##############################################

echo
echo "Installed versions"
echo "=================="

TOOLS=(
subfinder
httpx
dnsx
naabu
katana
nuclei
tlsx
assetfinder
gau
waybackurls
hakrawler
gowitness
whatweb
nmap
masscan
ffuf
feroxbuster
gobuster
)

for t in "${TOOLS[@]}"
do
    printf "%-15s" "$t"

    if command -v "$t" >/dev/null 2>&1
    then
        echo "✓"
    else
        echo "✗"
    fi
done

echo
echo "======================================"
echo "Recon environment installation complete"
echo "Restart your terminal or run:"
echo
echo "source ~/.bashrc"
echo "======================================"
