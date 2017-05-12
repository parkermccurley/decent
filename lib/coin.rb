# Gem Requirements
require "bundler/setup"
require "commander/import"
require "json"
require "rest-client"
require "rubygems"

# Persistence Requirements
require "../db/setup"

# Application Requirements
require "./coin/command/exchange_rate_command"
require "./coin/command/update_exchange_rate_command"
require "./coin/service/api"
require "./coin/service/bitcoin_exchange_rate_api"
require "./coin/service/litecoin_exchange_rate_api"
require "./coin/service/ether_exchange_rate_api"

program :name, "coin"
program :version, "0.0.1"
program :description, "A ruby command line application for managing cryptocurrency holdings."

command :exchange_rate do |command|
  command.syntax = "coin exchange_rate"
  command.description = "Run tasks related to exchange rates"
  command.option "--currency STRING", String, "Selects currency for task (BTC, LTC, ETH)"
  command.action do |args, options|
    ExchangeRateCommand.execute args, options
  end
end

command :hodling do |command|
  command.syntax = "coin hodling"
  command.description = "Run tasks related to coins you hodl"
  command.action do |args, options|
    HodlingCommand.execute args, options
  end
end
