class EtherExchangeRateApi
  def self.call
    ether = JSON.parse(API.call("get", "https://api.coinbase.com/v2/exchange-rates?currency=ETH"))
    return ether["data"]["rates"]["USD"]
  end
end
