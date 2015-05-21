#!/bin/bash
echo "Installing latest stable redis. We'll be sudoing."
sudo apt-get -y build-dep redis-server
curl -O http://download.redis.io/redis-stable.tar.gz
tar xzf redis-stable.tar.gz
cd redis-stable
# Redirect echo to the install_server.sh script to accept all defaults
# and make it non-interactive.
make test && sudo make install && echo -n | sudo utils/install_server.sh

