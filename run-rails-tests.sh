#!/bin/bash
set -e -x

pushd concourse
	bundle install --without production
	rails test
popd