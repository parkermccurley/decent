module Decent
  class LitecoinAPI
    def self.get_balance(address)
      begin
        response = URI(Constants::GET_LITECOIN_BALANCE_URI + address).read
        return JSON.parse(response, object_class: OpenStruct).data.balance
      rescue OpenURI::HTTPError
      end
    end

    def self.get_exchange_rate
      begin
        response = URI(Constants::GET_LITECOIN_EXCHANGE_RATE_URI).read
        return JSON.parse(response, object_class: OpenStruct).data.rates.USD
      rescue OpenURI::HTTPError
      end
    end
  end
end
