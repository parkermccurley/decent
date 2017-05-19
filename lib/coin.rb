# Gem Requirements
require "bundler/setup"
require "commander/import"
require "highline"
require "json"
require "rest-client"
require "rubygems"

# Application Requirements
require "./coin/setup"
require "./coin/command/hodling_command"
require "./coin/command/hodling_command/add_hodling_command"
require "./coin/command/hodling_command/balance_hodling_command"
require "./coin/command/hodling_command/list_hodling_command"
require "./coin/command/hodling_command/remove_hodling_command"
require "./coin/command/hodling_command/update_hodling_command"
require "./coin/command/exchange_rate_command"
require "./coin/command/exchange_rate_command/list_exchange_rate_command"
require "./coin/command/exchange_rate_command/update_exchange_rate_command"
require "./coin/service/bitcoin_api"
require "./coin/service/litecoin_api"
require "./coin/service/ether_api"

# Initialization
program :name, "coin"
program :version, "0.0.1"
program :description, "A ruby command line application for managing cryptocurrency holdings."

command :hodling do |command|
  command.syntax = "coin hodling"
  command.description = "Run tasks related to coins you hodl"
  command.option "--address STRING", String, "Selects hodling for task"
  command.action do |args, options|
    HodlingCommand.execute args, options
  end
end

command :exchange_rate do |command|
  command.syntax = "coin exchange_rate"
  command.description = "Run tasks related to exchange rates"
  command.option "--currency STRING", String, "Selects currency for task (BTC, LTC, ETH)"
  command.action do |args, options|
    ExchangeRateCommand.execute args, options
  end
end
