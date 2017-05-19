class UpdateExchangeRateCommand
  def self.execute
    Database[:exchange_rates].each do |exchange_rate|
      case exchange_rate[:currency]
      when "BTC"
        rate = BitcoinExchangeRateApi.call
        Database[:exchange_rates]
          .where(currency: exchange_rate[:currency])
          .update(rate: rate, updated_at: DateTime.now)
      when "ETH"
        rate = EtherExchangeRateApi.call
        Database[:exchange_rates]
          .where(currency: exchange_rate[:currency])
          .update(rate: rate, updated_at: DateTime.now)
      when "LTC"
        rate = LitecoinExchangeRateApi.call
        Database[:exchange_rates]
          .where(currency: exchange_rate[:currency])
          .update(rate: rate, updated_at: DateTime.now)
      end
    end
  end
end
