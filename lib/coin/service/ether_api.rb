class EtherAPI
  def self.get_balance(address)
    url = "https://api.blockcypher.com/v1/eth/main/addrs/#{address}/balance"
    return JSON.parse(RestClient.get url)["balance"]
  end

  def self.get_exchange_rate
    url = "https://api.coinbase.com/v2/exchange-rates?currency=ETH"
    return JSON.parse(RestClient.get url)["data"]["rates"]["USD"]
  end
end
