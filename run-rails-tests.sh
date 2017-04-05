#!/bin/bash
set -e -x

apt-get install nodejs
pushd concourse
	bundle install --without production
	bundle exec rails test
popd
