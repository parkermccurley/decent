#!/usr/local/bin/ruby

# Gem Requirements
require "rubygems"
require "bundler/setup"
require "commander/import"

# Persistence Requirements
require "../db/setup"

# Application Requirements
require "./api_call"

program :name, "coin"
program :version, "0.0.1"
program :description, "A ruby command line application for managing cryptocurrency holdings."

# Test command to check
command :test do |c|
  c.syntax = "coin test"
  c.description = "execute test command"
  c.action do |args, options|
    test_call = APICall.new("https://api.cryptonator.com/api/ticker/btc-usd", "get")
    puts test_call.call
  end
end
