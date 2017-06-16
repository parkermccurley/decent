module Decent
  class LitecoinAPI
    def self.get_balance(address)
      currency = "LTC"
      begin
        uri      = Constant.currency[currency]::GET_BALANCE_URI + address
        response = URI(uri).read
        return JSON.parse(response, object_class: OpenStruct).data.balance
      rescue OpenURI::HTTPError => error
        status = error.io.status[0]
        Error.currency[currency].get_balance_error address, status
      end
    end

    def self.get_exchange_rate
      currency = "LTC"
      begin
        uri      = Constant.currency[@currency]::GET_EXCHANGE_RATE_URI
        response = URI(uri).read
        return JSON.parse(response, object_class: OpenStruct).data.rates.USD
      rescue OpenURI::HTTPError => error
        status = error.io.status[0]
        Error.currency[currency].get_exchange_rate_error status
      end
    end
  end
end
