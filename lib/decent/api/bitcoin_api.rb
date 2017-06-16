module Decent
  class BitcoinAPI
    def self.get_balance(address)
      begin
        response = URI("https://blockchain.info/q/addressbalance/#{address}").read
        return response.to_f / 10**8
      rescue OpenURI::HTTPError
      end
    end

    def self.get_exchange_rate
      begin
        response = URI("https://api.coinbase.com/v2/exchange-rates?currency=BTC").read
        return JSON.parse(response, object_class: OpenStruct).data.rates.USD
      rescue OpenURI::HTTPError
      end
    end
  end
end
