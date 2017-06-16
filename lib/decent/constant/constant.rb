module Decent
  class Constant
    def self.currency
      return {
        "BTC" => BitcoinConstant,
        "ETH" => EthereumConstant,
        "LTC" => LitecoinConstant
      }
    end
  end
end
