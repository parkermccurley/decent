module Decent
  class Error
    def self.currency
      return {
        "BTC" => BitcoinError,
        "ETH" => EthereumError,
        "LTC" => LitecoinError
      }
    end
  end
end
