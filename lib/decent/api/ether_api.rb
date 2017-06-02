module Decent
  class EtherAPI
    def self.get_balance(address)
      uri = URI("https://api.blockcypher.com/v1/eth/main/addrs/#{address}/balance")
      return JSON.parse(uri.read)["balance"].to_f / 10**18
    end

    def self.get_exchange_rate
      response = URI("https://api.coinbase.com/v2/exchange-rates?currency=ETH").read
      return JSON.parse(response, object_class: OpenStruct).data.rates.USD
    end
  end
end
