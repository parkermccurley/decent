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

# Entrypoint Requirement
require "./coin/program"
