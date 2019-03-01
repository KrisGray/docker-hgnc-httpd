FROM centos:7
MAINTAINER Kristian Gray <kris@ebi.ac.uk>

COPY build.sh /

RUN /build.sh

WORKDIR /var/www/
