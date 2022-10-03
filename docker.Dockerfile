FROM ubuntu:20.04

MAINTAINER Batuhan Sen <sinyordes@protonmail.com>

ENV TERM xt erm

ARG EXTS="curl \
          screen \
          git"
RUN apt update -y
RUN apt install  $EXTS -y
EXPOSE 80
EXPOSE 443

#CMD ["/sbin/runit-wrapper"]