module Coin
  class BitcoinAPI
    def self.get_balance(address)
      url = "https://blockchain.info/q/addressbalance/#{address}"
      return RestClient.get(url).to_f / 10**8
    end

    def self.get_exchange_rate
      url = "https://api.coinbase.com/v2/exchange-rates?currency=BTC"
      return JSON.parse(RestClient.get url)["data"]["rates"]["USD"]
    end
  end
end
