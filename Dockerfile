FROM node:6

ENV NPM_CONFIG_LOGLEVEL warn

# Install common build tools
RUN apt-get update && \
    apt-get install -y \
        zip \
        unzip && \
  apt-get clean && apt-get autoclean && apt-get --purge -y autoremove && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Pre-install npm packages
RUN npm install -g node-gyp && \
    npm install -g node-sass && \
    npm cache clean && \
    rm -rf /tmp/* /var/tmp/*
