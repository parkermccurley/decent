module Decent
  class Constants
    def self.currency
      return {
        "BTC" => BitcoinConstants,
        "ETH" => EtherConstants,
        "LTC" => LitecoinConstants
      }
    end
  end
end
