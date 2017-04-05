#!/bin/bash
set -e -x

pushd concourse
	bundle install --without production
	bundle exec rails test
popd
