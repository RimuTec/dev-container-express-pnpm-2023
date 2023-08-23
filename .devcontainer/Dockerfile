FROM node:18.17.1
# Last version check on 02 Aug 2023.
# Check for new versions at https://nodejs.org/en/ or at https://hub.docker.com/_/node
# Note that if you want to use this container for a Create React Application (CRA)
# you may need to use a different version. Consult React documentation.
# [Manfred]


################################################################################
# Install prerequisites and utilities
RUN apt-get update
RUN apt-get install -y \
    lsb-release \
    procps \
    iputils-ping \
    net-tools
# lsb_release: use lsb_release -a to show the linux version used by the dev container
# procps: to support command 'ps'
# iputils-ping: to support command 'ping'
#    See: https://linuxconfig.org/ping-command-not-found-on-ubuntu-20-04-focal-fossa-linux
# net-tools: to support command such as 'arp', 'ifconfig', 'netstat', etc.
#    See: https://helpmanual.io/packages/apt/net-tools/
# [Manfred]


################################################################################
# Install pnpm
RUN curl -L -o /usr/local/bin/pnpm https://github.com/pnpm/pnpm/releases/download/v8.6.12/pnpm-linux-x64
ENV PNPM_HOME=/usr/local/bin/
RUN chmod +x /usr/local/bin/pnpm
# Last version check on 02 Aug 2023.
# Newer versions might be available at https://www.npmjs.com/search?q=yarn
# [Manfred]

# The following is an example of how to install a package globally using PNPM specific commands:
#
# RUN pnpm add -g cdktf-cli@0.18.0
#
# If you uncomment the preceding line, you will be able to use the cdktf-cli command within
# the dev container, e.g. 'cdktf --version' will work in the dev container, even if you are
# a non-root user (strongly recommended).
#
# Remember not to use 'pnpm install' for global packages, as it will try to install
# the package in the current directory, which is not what you want. Also, it is likely
# to fail unless there is a package.json file in the current directory.

