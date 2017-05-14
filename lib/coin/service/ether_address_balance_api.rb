class EtherAddressBalanceApi
  def self.call(address)
    ether = JSON.parse(API.call("get", "https://api.blockcypher.com/v1/eth/main/addrs/#{address}/balance"))
    return ether["balance"]
  end
end
