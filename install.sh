sudo apt -y update


# Linux basics:
sudo apt install -y gksu
sudo apt install -y snapd-xdg-open

# Dev essentials:
sudo apt install -y build-essential python-pip python3-pip python-dev \
    python3-dev python-setuptools python3-setuptools git
sudo -H pip install --upgrade pip
sudo -H pip install --upgrade virtualenv
sudo -H pip install try

# Node.JS
curl -o- https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
source ~/.profile
nvm install

# Atom editor
sudo add-apt-repository ppa:webupd8team/atom
sudo apt update; sudo apt install atom

# Cryptography:
sudo apt install -y libssl-dev libffi-dev

# Install fonts:
curl -kL https://raw.github.com/cstrap/monaco-font/master/install-font-ubuntu.sh | bash
# Paste link for Monaco: http://usystem.googlecode.com/files/MONACO.TTF


# Databases:
# mysql
sudo apt install -y mysql-server
sudo systemctl disable mysql
# # mongodb [CHECK LATEST VERSION AND BELOW LINES WILL CHANGE ACCORDINGLY]
# sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
# echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
# sudo apt -y update
# sudo apt install -y mongodb-org
# sudo systemctl enable mongod.service
# sudo systemctl daemon-reload
# redis
wget http://download.redis.io/redis-stable.tar.gz
tar -xvzf redis-stable.tar.gz
rm redis-stable.tar.gz
cd redis-stable
make
sudo make install
cd ..
rm -r redis-stable

# nginx
sudo apt -y install nginx
sudo systemctl disable nginx # (disable auto starting nginx upon reboot)

# Tools:
sudo apt -y install htop


# Softwares:
sudo apt -y install vlc
sudo add-apt-repository -y ppa:qbittorrent-team/qbittorrent-stable
sudo add-apt-repository -y ppa:fossfreedom/byzanz
sudo apt -y update
sudo apt install -y qbittorrent
sudo apt install -y byzanz


# Virtualbox
# sudo dpkg -i yourvirtualboxfile.deb
# sudo apt -f install
# sudo adduser lokesh vboxusers
# double-click extension pack and install


# Machine learning:
# ./install_tesseract.sh	# Optical character recognition engine


# Image processing:
# apt -y install imagemagick		# CLI for image conversions, resize etc.


# Scientific computing
# sudo -H pip install scipy numpy

# Required by scipy
for pkg in \
    libblas-dev \
    liblapack-dev \
    libatlas-dev
do
    sudo apt -y install $pkg
done


# To install 3rd party software (if cannot install through ubuntu software):
#   $ sudo dpkg -i awesome_new_app.deb
#   $ sudo apt -f install


# Upgrade outdated pip requirements
for python_executable in python python3
do
    # list outdated
    $python_executable -m pip list --outdated --format=freeze
    # upgrade all local requirements
    $python_executable -m pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | sudo -H xargs -n1 pip install -U
done


# Message queues
# RabbitMQ
# https://www.rabbitmq.com/install-debian.html


# Building Python from source
# ./configure --enable-optimizations --with-lto  # with optimizations
# make profile-opt  # compile using profile guided optimizations (PGO)
# make test  # test interpreter
# sudo -H make install  # copy files to system directories


# Python runtime dependencies (optional modules for Python)
# Python 3
for pkg in \
    zlib1g-dev \
    libncurses*-dev \
    libssl-dev \
    libsqlite3-dev \
    libbz2-dev \
    libgdbm-dev \
    liblzma-dev \
    tk-dev \
    libreadline-dev
do
    sudo apt -y install $pkg
done
# Python 2
for pkg in \
    libdb-dev
do
    sudo apt -y install $pkg
done
# General
for pkg in \
    libc6-dev \
    libc++-dev
do
    sudo apt -y install $pkg
done


# Python wsgi servers

# needed by bjoern
sudo apt -y install libev-dev


# INSTALL FROM SOURCE:
# ..(add to list here)


# INSTALL FROM LINUX SOFTWARE DOWNLOADER
# meld: http://meldmerge.org/
# gthumb
# gimp


sudo apt -y update
sudo apt -y upgrade
sudo apt -y dist-upgrade
