FROM ubuntu:xenial
LABEL author="Brian A. Danielak"
LABEL version="0.1"

# Environment Variables
ENV NODE_VERSION "8"
ENV NVM_DIR="$HOME/.nvm"

# Install some basic infrastructure
RUN apt-get update
RUN apt-get install --assume-yes apache2
RUN apt-get install --assume-yes ca-certificates
RUN apt-get install --assume-yes ccache
RUN apt-get install --assume-yes gdebi
RUN apt-get install --assume-yes git
RUN apt-get install --assume-yes libcurl4-openssl-dev
RUN apt-get install --assume-yes libmysqlclient-dev
RUN apt-get install --assume-yes libpq-dev
RUN apt-get install --assume-yes libssl-dev
RUN apt-get install --assume-yes libx11-dev
RUN apt-get install --assume-yes libxml2-dev
RUN apt-get install --assume-yes lmodern
RUN apt-get install --assume-yes mysql-client
RUN apt-get install --assume-yes wget

# Set up node and yarn
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
RUN [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
RUN nvm install $NODE_VERSION
