module Decent
  class BitcoinAPI
    def self.get_balance(address)
      response = URI("https://blockchain.info/q/addressbalance/#{address}").read
      return response.to_f / 10**8
    end

    def self.get_exchange_rate
      response = URI("https://api.coinbase.com/v2/exchange-rates?currency=BTC").read
      return JSON.parse(response, object_class: OpenStruct).data.rates.USD
    end
  end
end
