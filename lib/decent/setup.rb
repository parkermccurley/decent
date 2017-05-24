require "sequel"

module Decent
  Database = Sequel.sqlite("./lib/decent/storage/decent.db")

  unless Database.table_exists? :holdings
    Database.create_table(:holdings) do
      primary_key :id
      String :nickname
      String :address
      String :currency
      Float :balance
      DateTime :created_at
      DateTime :updated_at
    end
  end

  unless Database.table_exists? :exchange_rates
    Database.create_table(:exchange_rates) do
      primary_key :id
      String :currency
      Float :rate
      DateTime :created_at
      DateTime :updated_at
    end

    currencies = [
      "BTC",
      "ETH",
      "LTC"
    ]

    currencies.each do |currency|
      Database[:exchange_rates].insert(currency: currency, rate: 0.00, created_at: DateTime.now, updated_at: DateTime.now)
    end
  end

  unless Database.table_exists? :historic_holdings
    Database.create_table(:historic_holdings) do
      primary_key :id
      Integer :holding_id
      String :address
      String :currency
      Float :balance
      DateTime :recorded_at
      DateTime :created_at
    end
  end

  unless Database.table_exists? :historic_exchange_rates
    Database.create_table(:historic_exchange_rates) do
      primary_key :id
      Integer :exchange_rate_id
      String :currency
      Float :rate
      DateTime :recorded_at
      DateTime :created_at
    end
  end
end
