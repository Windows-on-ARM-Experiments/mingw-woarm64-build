#!/bin/bash

source `dirname ${BASH_SOURCE[0]}`/config.sh

echo "::group::Install Dependencies"
    sudo apt update
    sudo apt install -y \
      asciidoc \
      autotools-dev \
      build-essential \
      ccache \
      docbook-xml \
      docbook-xsl \
      gcc \
      less \
      libexpat1-dev \
      libc6-dev \
      libcurl4-openssl-dev \
      libssl-dev \
      gettext \
      libpcre2-dev \
      python3 \
      rsync \
      texinfo \
      xmlto
echo "::endgroup::"

echo 'Success!'
