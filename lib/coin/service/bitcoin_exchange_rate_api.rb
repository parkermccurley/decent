class BitcoinExchangeRateApi
  def self.call
    bitcoin = JSON.parse(API.call("get", "https://api.coinbase.com/v2/exchange-rates?currency=BTC"))
    puts bitcoin["data"]["rates"]["USD"]
  end
end
