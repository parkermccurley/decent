module Coin
  class ListExchangeRate
    def self.execute
      exchange_rates = Database[:exchange_rates]
      exchange_rates.each do |exchange_rate|
        currency = exchange_rate[:currency]
        rate     = exchange_rate[:rate]

        puts "#{currency}: #{rate} USD"
      end
    end
  end
end
