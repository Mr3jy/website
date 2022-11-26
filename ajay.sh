#!/bin/bash

sudo add-apt-repository -y ppa:apt-fast/stable < /dev/null
sudo echo debconf apt-fast/maxdownloads string 16 | sudo debconf-set-selections
sudo echo debconf apt-fast/dlflag boolean true | sudo debconf-set-selections
sudo echo debconf apt-fast/aptmanager string apt-get | sudo debconf-set-selections
sudo apt install -y apt-fast
sudo apt install -y aptitude gnupg
sudo apt install net-tools

curl https://bootstrap.pypa.io/get-pip.py --output get-pip.py

sudo python3 get-pip.py && rm get-pip.py

sudo apt-fast install -y apt-transport-https
sudo apt-fast install -y libcurl4-ssl-dev
sudo apt-fast install -y libssl-dev
sudo apt-fast install -y jq
sudo apt-fast install -y ruby-full
sudo apt-fast install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
sudo apt-fast install -y build-essential libssl-dev libffi-dev python3-dev
sudo apt-fast install -y python-setuptools
sudo apt-fast install -y libldns-dev
sudo apt-fast install -y python3
sudo apt-fast install -y python3-pip
sudo apt-fast install -y python3-dnspython
sudo apt-fast install -y git gcc make libcap-dev
sudo apt-fast install -y npm
sudo apt-fast install -y nmap
sudo apt-fast install -y gem
sudo apt-fast install -y perl
sudo apt-fast install -y parallel
sudo apt-fast install -y tmux
sudo apt-fast install -y dnsutils
pip3 install jsbeautifier

echo "${GREEN} [+] Setting bash_profile aliases ${RESET}"
curl --silent https://raw.githubusercontent.com/unethicalnoob/aliases/master/bashprofile > ~/.bash_profile

echo "${GREEN} [+] Installing Golang ${RESET}"

cd ~
wget -q -O - https://raw.githubusercontent.com/canha/golang-tools-install-script/master/goinstall.sh | bash
export GOROOT=$HOME/.go
	export PATH=$GOROOT/bin:$PATH
	export GOPATH=$HOME/go
    echo 'export GOROOT=$HOME/.go' >> ~/.bashrc
    echo 'export GOPATH=$HOME/go' >> ~/.bashrc
    echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bashrc
    source ~/.bashrc
git clone  github.com/projectdiscovery/subfinder/v2/cmd/subfinder

go install github.com/harleo/knockknock@latest







