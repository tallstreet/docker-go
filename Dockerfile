# Go Developement Environment
#
# VERSION               0.0.1

FROM        base
MAINTAINER  Gary Roberts <gary@tallstreet.com>
RUN         apt-get update
RUN         apt-get upgrade -y
ENV         GOROOT /root/go
ENV         GOPATH /root
ADD         https://go.googlecode.com/files/go1.1.1.linux-amd64.tar.gz go1.1.1.tar.gz
RUN         tar -C /root -xzf go1.1.1.tar.gz
#ENV         PATH $PATH:$GOROOT/bin:/root/bin
ENV         PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/root/go/bin:/root/bin
RUN         locale-gen en_US en_US.UTF-8
RUN         apt-get install -y git mercurial
