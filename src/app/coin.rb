#!/usr/local/bin/ruby

# Gem Requirements
require "rubygems"
require "bundler/setup"
require "commander/import"

# Application Requirements
require "../db/setup.rb"

program :name, "coin"
program :version, "0.0.1"
program :description, "A ruby command line application for managing cryptocurrency holdings."
