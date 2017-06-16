module Decent
  class API
    def self.currency
      return {
        "BTC" => BitcoinAPI,
        "ETH" => EthereumAPI,
        "LTC" => LitecoinAPI
      }
    end
  end
end
