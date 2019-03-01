#!/bin/bash

yum -y update && yum clean all;
yum -y install httpd mod_ssl;
yum -y install wget
yum -y install gcc
yum -y install zlib-devel
yum -y install openssl-devel
yum -y install sudo
yum -y install git
yum -y install tar which
yum -y groupinstall "Development Tools"

# service iptables stop;
# chkconfig iptables off;
# rm -rf /etc/rc.d/init.d/iptables

yum -y install libyaml-devel libffi-devel readline-devel

curl -sSL https://rvm.io/mpapis.asc | gpg --import -
curl -sSL https://rvm.io/pkuczynski.asc | gpg --import -

curl -sSL https://get.rvm.io | bash -s stable
source /etc/profile.d/rvm.sh
rvm install 2.3.0
rvm use 2.3.0 --default

gem update --system
gem install nokogiri
gem install jekyll bundler

curl -sL https://rpm.nodesource.com/setup_11.x | bash -
yum -y install nodejs
npm install gulp-cli -g
npm install karma-cli -g

yum -y install perl-CPAN
curl -L http://cpanmin.us | perl - App::cpanminus

echo "Include /var/www/conf.d/*.conf" >> /etc/httpd/conf/httpd.conf

wget https://anorien.csc.warwick.ac.uk/mirrors/epel//7/x86_64/Packages/e/epel-release-7-11.noarch.rpm
rpm -ivh epel-release-7-11.noarch.rpm
yum -y install mod_perl
yum -y install mod_perl-devel
cpanm -n Apache2::Request
cpanm -n Test::Exception
cpanm -n Test::MockModule
cpanm -n Test::Class::Moose
cpanm -n Test::Class::Moose::Role::AutoUse
cpanm -n Test::LWP::UserAgent
cpanm -n Test::MockObject
cpanm -n Module::Spy
cpanm -n DBD::Mock
cpanm -n Throwable::Error
cpanm -n Test::WWW::Mechanize
yum -y install perl-DBD-mysql perl-DBI
yum -y install perl-DBD-Pg
yum -y install libapreq2
yum install -y firefox
yum install -y  xorg-x11-server-Xvfb
