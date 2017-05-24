module Decent
  class API
    def self.currency
      return {
        "BTC" => BitcoinAPI,
        "ETH" => EtherAPI,
        "LTC" => LitecoinAPI
      }
    end
  end
end
