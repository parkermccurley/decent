class UpdateHodlingCommand
  def self.execute
    Database[:holdings].each do |hodling|
      case hodling[:currency]
      when "BTC"
        balance = BitcoinAddressBalanceApi.call hodling[:address]
        Database[:holdings].where(id: hodling[:id]).update(balance: balance, updated_at: DateTime.now)
      when "ETH"
        balance = EtherAddressBalanceApi.call hodling[:address]
        Database[:holdings].where(id: hodling[:id]).update(balance: balance, updated_at: DateTime.now)
      when "LTC"
        balance = LitecoinAddressBalanceApi.call hodling[:address]
        Database[:holdings].where(id: hodling[:id]).update(balance: balance, updated_at: DateTime.now)
      end
    end
  end
end
