module Decent
  class EthereumAPI
    def self.get_balance(address)
      currency = "ETH"
      begin
        uri      = Constant.currency[currency]::GET_BALANCE_URI + "#{address}/balance"
        response = URI(uri).read
        return JSON.parse(response)["balance"].to_f / 10**18
      rescue OpenURI::HTTPError => error
        status = error.io.status[0]
        Error.currency[currency].get_balance_error address, status
      end
    end

    def self.get_exchange_rate
      currency = "ETH"
      begin
        uri      = Constant.currency[currency]::GET_EXCHANGE_RATE_URI
        response = URI(uri).read
        return JSON.parse(response, object_class: OpenStruct).data.rates.USD
      rescue OpenURI::HTTPError => error
        status = error.io.status[0]
        Error.currency[currency].get_exchange_rate_error status
      end
    end
  end
end
