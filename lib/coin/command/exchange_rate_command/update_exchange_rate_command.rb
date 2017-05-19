class UpdateExchangeRateCommand
  def self.update_exchange_rate_database(currency, rate)
    Database[:exchange_rates]
      .where(currency: currency)
      .update(rate: rate, updated_at: DateTime.now)
  end

  def self.get_exchange_rate(currency)
    case currency
    when "BTC"
      return BitcoinAPI.get_exchange_rate
    when "ETH"
      return EtherAPI.get_exchange_rate
    when "LTC"
      return LitecoinAPI.get_exchange_rate
    end
  end

  def self.execute
    Database[:exchange_rates].each do |exchange_rate|
      rate = get_exchange_rate exchange_rate[:currency]
      update_exchange_rate_database exchange_rate[:currency], rate
    end
  end
end
