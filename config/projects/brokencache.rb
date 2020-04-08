#
# Copyright 2020 YOUR NAME
#
# All Rights Reserved.
#

name "brokencache"
maintainer "CHANGE ME"
homepage "https://CHANGE-ME.com"

# Defaults to C:/brokencache on Windows
# and /opt/brokencache on all other platforms
install_dir "#{default_root}/#{name}"

build_version Omnibus::BuildVersion.semver
build_iteration 1

# Creates required build directories
dependency "preparation"

# Install basic ruby and nokogiri and watch the cache break
dependency "ruby"
dependency "rubygems"
dependency "nokogiri"
dependency "bundler"

# brokencache dependencies/components
# dependency "somedep"

exclude "**/.git"
exclude "**/bundler/git"
