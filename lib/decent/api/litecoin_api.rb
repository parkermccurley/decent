module Decent
  class LitecoinAPI
    @currency = "LTC"

    def self.get_balance(address)
      begin
        uri      = Constant.currency[@currency]::GET_BALANCE_URI + address
        response = URI(uri).read
        return JSON.parse(response, object_class: OpenStruct).data.balance
      rescue OpenURI::HTTPError
      end
    end

    def self.get_exchange_rate
      begin
        uri      = Constant.currency[@currency]::GET_EXCHANGE_RATE_URI
        response = URI(uri).read
        return JSON.parse(response, object_class: OpenStruct).data.rates.USD
      rescue OpenURI::HTTPError
      end
    end
  end
end
