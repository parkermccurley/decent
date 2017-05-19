class UpdateHodlingCommand
  def update_hodling_balance_database(id, balance)
    Database.holdings
      .where(id: id)
      .update(balance: balance, updated_at: DataTime.now)
  end

  def get_hodling_balance(currency, address)
    case currency
    when "BTC"
      return BitcoinAddressBalanceApi.call address
    when "ETH"
      return EtherAddressBalanceApi.call address
    when "LTC"
      return LitecoinAddressBalanceApi.call address
    end
  end

  def self.execute
    Database[:holdings].each do |hodling|
      balance = get_hodling_balance hodling[:currency], hodling[:address]
      update_hodling_balance_database hodling[:id], balance
    end
  end
end
