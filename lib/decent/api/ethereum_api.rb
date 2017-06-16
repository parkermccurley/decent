module Decent
  class EthereumAPI
    @currency = "ETH"

    def self.get_balance(address)
      begin
        uri      = Constant.currency[@currency]::GET_BALANCE_URI + "#{address}/balance"
        response = URI(uri).read
        return JSON.parse(response)["balance"].to_f / 10**18
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
