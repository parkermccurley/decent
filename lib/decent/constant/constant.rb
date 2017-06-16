module Decent
  class Constant
    def self.currency
      return {
        "BTC" => BitcoinConstant,
        "ETH" => EtherConstant,
        "LTC" => LitecoinConstant
      }
    end
  end
end
