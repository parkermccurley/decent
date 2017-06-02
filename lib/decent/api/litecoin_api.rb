module Decent
  class LitecoinAPI
    def self.get_balance(address)
      response = URI("https://ltc.blockr.io/api/v1/address/info/#{address}").read
      return JSON.parse(response, object_class: OpenStruct).data.balance
    end

    def self.get_exchange_rate
      response = URI("https://api.coinbase.com/v2/exchange-rates?currency=LTC").read
      return JSON.parse(response, object_class: OpenStruct).data.rates.USD
    end
  end
end
