class UpdateHodlingCommand
  def self.update_hodling_balance_database(id, balance)
    Database[:holdings]
      .where(id: id)
      .update(balance: balance, updated_at: DateTime.now)
  end

  def self.get_hodling_balance(currency, address)
    case currency
    when "BTC"
      return BitcoinAPI.get_balance address
    when "ETH"
      return EtherAPI.get_balance address
    when "LTC"
      return LitecoinAPI.get_balance address
    end
  end

  def self.execute
    Database[:holdings].each do |hodling|
      balance = get_hodling_balance hodling[:currency], hodling[:address]
      update_hodling_balance_database hodling[:id], balance
    end
  end
end
