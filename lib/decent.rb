# Gem Requirements
require "bundler/setup"
require "commander/import"
require "highline"
require "json"
require "rest-client"
require "rubygems"

# Application Requirements
require "decent/setup"
require "decent/command/hodling/hodling"
require "decent/command/hodling/add_hodling"
require "decent/command/hodling/list_hodling"
require "decent/command/hodling/remove_hodling"
require "decent/command/hodling/show_hodling"
require "decent/command/hodling/store_hodling"
require "decent/command/hodling/update_hodling"
require "decent/command/exchange_rate/exchange_rate"
require "decent/command/exchange_rate/list_exchange_rate"
require "decent/command/exchange_rate/store_exchange_rate"
require "decent/command/exchange_rate/update_exchange_rate"
require "decent/api/bitcoin_api"
require "decent/api/litecoin_api"
require "decent/api/ether_api"
require "decent/api/api"

module Decent
  # Initialization
  program :name, "decent"
  program :version, "0.1.0"
  program :description, "A ruby command line application for managing cryptocurrency holdings."

  # Commands
  command :hodling do |command|
    command.syntax = "decent hodling"
    command.description = "Run tasks related to coins you hodl"
    command.option "-nickname STRING", String, "Selects hodling for task"
    command.action do |args|
      Hodling.execute args
    end
  end

  command :exchange_rate do |command|
    command.syntax = "decent exchange_rate"
    command.description = "Run tasks related to exchange rates"
    command.option "-currency STRING", String, "Selects currency for task (BTC, LTC, ETH)"
    command.action do |args|
      ExchangeRate.execute args
    end
  end
end
