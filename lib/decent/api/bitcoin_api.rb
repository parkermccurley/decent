module Decent
  class BitcoinAPI
    @currency = "BTC"

    def self.get_balance(address)
      begin
        uri      = Constants.currency[@currency]::GET_BALANCE_URI + address
        response = URI(uri).read
        return response.to_f / 10**8
      rescue OpenURI::HTTPError
      end
    end

    def self.get_exchange_rate
      begin
        uri      = Constants.currency[@currency]::GET_EXCHANGE_RATE_URI
        response = URI(uri).read
        return JSON.parse(response, object_class: OpenStruct).data.rates.USD
      rescue OpenURI::HTTPError
      end
    end
  end
end
