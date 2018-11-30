#!/bin/bash

yum -y update && yum clean all;
yum -y install httpd mod_ssl;
yum -y install wget
yum -y install tar
yum -y install gcc
yum -y install zlib-devel
yum -y install openssl-devel
#yum -y install openssh-server openssh-clients
yum -y install sudo
yum -y install git


service iptables stop;
chkconfig iptables off;
rm -rf /etc/rc.d/init.d/iptables

wget http://ftp.ruby-lang.org/pub/ruby/2.1/ruby-2.1.1.tar.gz 
tar xvzf ruby-2.1.1.tar.gz
cd ruby-2.1.1
./configure --prefix=/usr
make
make install
cd /; rm -rf ruby-2.1.1*

gem update --system
gem install nokogiri
gem install jekyll bundler

curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -
yum -y install nodejs
npm install gulp-cli -g
npm install karma-cli -g

yum -y install perl-CPAN
curl -L http://cpanmin.us | perl - App::cpanminus

echo "Include /var/www/conf.d/*.conf" >> /etc/httpd/conf/httpd.conf

wget http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
rpm -ivh epel-release-6-8.noarch.rpm
#yum -y install libapreq2
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
yum -y install which
yum -y install libapreq2
yum install -y firefox
yum install -y  xorg-x11-server-Xvfb
