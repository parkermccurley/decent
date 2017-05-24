module Decent
  class LitecoinAPI
    def self.get_balance(address)
      url = "https://ltc.blockr.io/api/v1/address/info/#{address}"
      return JSON.parse(RestClient.get url)["data"]["balance"]
    end

    def self.get_exchange_rate
      url = "https://api.coinbase.com/v2/exchange-rates?currency=LTC"
      return JSON.parse(RestClient.get url)["data"]["rates"]["USD"]
    end
  end
end
