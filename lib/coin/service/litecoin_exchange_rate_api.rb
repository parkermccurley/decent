class LitecoinExchangeRateApi
  def self.call
    litecoin = JSON.parse(API.call("get", "https://api.coinbase.com/v2/exchange-rates?currency=LTC"))
    puts litecoin["data"]["rates"]["USD"]
  end
end
