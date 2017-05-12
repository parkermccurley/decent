# Gem Requirements
require "bundler/setup"
require "commander/import"
require "rest-client"
require "rubygems"

# Persistence Requirements
require "../db/setup"

# Application Requirements
require "./coin/program"
require "./coin/services/api_call"
