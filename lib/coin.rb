# Gem Requirements
require "bundler/setup"
require "commander/import"
require "rest-client"
require "rubygems"

# Persistence Requirements
require "../db/setup"

# Application Requirements
require "./coin/command/test_command"
require "./coin/service/api_call"

# Entrypoint Requirement
require "./coin/program"
