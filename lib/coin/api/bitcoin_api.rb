class BitcoinAPI
  def self.get_balance(address)
    url = "https://blockchain.info/address/#{address}?format=json"
    return JSON.parse(RestClient.get url)["final_balance"]
  end

  def self.get_exchange_rate
    url = "https://api.coinbase.com/v2/exchange-rates?currency=BTC"
    return JSON.parse(RestClient.get url)["data"]["rates"]["USD"]
  end
end
