class BitcoinAddressBalanceApi
  def self.call(address)
    bitcoin = JSON.parse(API.call("get", "https://blockchain.info/address/#{address}?format=json"))
    return bitcoin["final_balance"]
  end
end
