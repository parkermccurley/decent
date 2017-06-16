module Decent
  class EtherAPI
    def self.get_balance(address)
      begin
        response = URI("https://api.blockcypher.com/v1/eth/main/addrs/#{address}/balance").read
        return JSON.parse(response)["balance"].to_f / 10**18
      rescue OpenURI::HTTPError
      end
    end

    def self.get_exchange_rate
      begin
        response = URI("https://api.coinbase.com/v2/exchange-rates?currency=ETH").read
        return JSON.parse(response, object_class: OpenStruct).data.rates.USD
      rescue OpenURI::HTTPError
      end
    end
  end
end
