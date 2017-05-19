class UpdateExchangeRateCommand
  def update_exchange_rate_database(currency, rate)
    Database[:exchange_rates]
      .where(currency: currency)
      .update(rate: rate, updated_at: DateTime.now)
  end

  def get_exchange_rate(currency)
    case currency
    when "BTC"
      return BitcoinExchangeRateApi.call
    when "ETH"
      return EtherExchangeRateApi.call
    when "LTC"
      return LitecoinExchangeRateApi.call
    end
  end

  def self.execute
    Database[:exchange_rates].each do |exchange_rate|
      rate = get_exchange_rate exchange_rate[:currency]
      update_exchange_rate_database currency, rate
    end
  end
end
