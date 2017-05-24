# Gem Requirements
require "bundler/setup"
require "commander/import"
require "highline"
require "json"
require "rest-client"
require "rubygems"

# Application Requirements
require "./coin/setup"
require "./coin/command/hodling/hodling"
require "./coin/command/hodling/add_hodling"
require "./coin/command/hodling/list_hodling"
require "./coin/command/hodling/remove_hodling"
require "./coin/command/hodling/show_hodling"
require "./coin/command/hodling/store_hodling"
require "./coin/command/hodling/update_hodling"
require "./coin/command/exchange_rate/exchange_rate"
require "./coin/command/exchange_rate/list_exchange_rate"
require "./coin/command/exchange_rate/store_exchange_rate"
require "./coin/command/exchange_rate/update_exchange_rate"
require "./coin/api/bitcoin_api"
require "./coin/api/litecoin_api"
require "./coin/api/ether_api"
require "./coin/api/api"

# Initialization
program :name, "coin"
program :version, "0.0.1"
program :description, "A ruby command line application for managing cryptocurrency holdings."

# Commands
command :hodling do |command|
  command.syntax = "coin hodling"
  command.description = "Run tasks related to coins you hodl"
  command.option "-nickname STRING", String, "Selects hodling for task"
  command.action do |args|
    Hodling.execute args
  end
end

command :exchange_rate do |command|
  command.syntax = "coin exchange_rate"
  command.description = "Run tasks related to exchange rates"
  command.option "-currency STRING", String, "Selects currency for task (BTC, LTC, ETH)"
  command.action do |args|
    ExchangeRate.execute args
  end
end
