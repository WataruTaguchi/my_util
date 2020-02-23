#!/bin/sh

apt update
apt install -y build-essential libreadline5 libreadline-dev libssl-dev libpcap-dev libxml2-dev libxslt1-dev libyaml-dev libsqlite3-dev postgresql libpq5 libpq-dev subversion git git-core autoconf curl zlib1g-dev dnsutils

# ruby
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="~/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc
rbenv install 2.7.0

# metasploit
rbenv install 2.6.5
rbenv global 2.6.5
git clone https://github.com/rapid7/metasploit-framework.git
cd metasploit-framework
apt install gem
gem install bundler

# nslookupとかdns関連
apt install 