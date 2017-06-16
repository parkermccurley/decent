module Decent
  class LitecoinAPI
    def self.get_balance(address)
      begin
        response = URI("https://ltc.blockr.io/api/v1/address/info/#{address}").read
        return JSON.parse(response, object_class: OpenStruct).data.balance
      rescue OpenURI::HTTPError
      end
    end

    def self.get_exchange_rate
      begin
        response = URI("https://api.coinbase.com/v2/exchange-rates?currency=LTC").read
        return JSON.parse(response, object_class: OpenStruct).data.rates.USD
      rescue OpenURI::HTTPError
      end
    end
  end
end
