#    ubuntu base image new project8
FROM ubuntu:14.04

MAINTAINER <Author name and email address>

RUN apt-get update -y
RUN apt-get upgrade -y


# Create a time and date stamp of this build
RUN mkdir -p /version; \
    /usr/bin/lsb_release -a > /version/base-image-build-"$(/usr/bin/lsb_release -si):$(/usr/bin/lsb_release -sr)-$(date +"%Y-%m-%d-%H:%M:%S-%Z")"

CMD /bin/bash
