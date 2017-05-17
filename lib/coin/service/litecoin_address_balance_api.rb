class LitecoinAddressBalanceApi
  def self.call(address)
    litecoin = JSON.parse(API.call("get", "https://ltc.blockr.io/api/v1/address/info/#{address}"))
    return litecoin["data"]["balance"]
  end
end
