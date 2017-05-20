# Version: 0.0.1

FROM codeyu/ubuntu-chinese-sources:latest

MAINTAINER codeyu "github.com/codeyu"

RUN apt-get update && \
    apt-get install -y fonts-freefont-ttf fonts-ubuntu-font-family-console ttf-ubuntu-font-family edubuntu-fonts fonts-ubuntu-title fonts-liberation

COPY windowsfonts/ /usr/share/fonts/windowsfonts/

RUN chmod 755 /usr/share/fonts/windowsfonts/*

RUN fc-cache -fv