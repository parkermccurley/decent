module Decent
  class BitcoinAPI
    def self.get_balance(address)
      begin
        response = URI(Constants::GET_BITCOIN_BALANCE_URI + address).read
        return response.to_f / 10**8
      rescue OpenURI::HTTPError
      end
    end

    def self.get_exchange_rate
      begin
        response = URI(Constants::GET_BITCOIN_EXCHANGE_RATE_URI).read
        return JSON.parse(response, object_class: OpenStruct).data.rates.USD
      rescue OpenURI::HTTPError
      end
    end
  end
end
