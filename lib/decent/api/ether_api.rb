module Decent
  class EtherAPI
    def self.get_balance(address)
      begin
        response = URI(Constants::GET_ETHER_BALANCE_URI + "#{address}/balance").read
        return JSON.parse(response)["balance"].to_f / 10**18
      rescue OpenURI::HTTPError
      end
    end

    def self.get_exchange_rate
      begin
        response = URI(Constants::GET_ETHER_EXCHANGE_RATE_URI).read
        return JSON.parse(response, object_class: OpenStruct).data.rates.USD
      rescue OpenURI::HTTPError
      end
    end
  end
end
