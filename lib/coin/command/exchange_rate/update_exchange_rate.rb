class UpdateExchangeRate
  def self.execute
    exchange_rates = Database[:exchange_rates]
    exchange_rates.each do |exchange_rate|
      currency = exchange_rate[:currency]
      rate     = API.currency[currency].get_exchange_rate

      exchange_rates.where(currency: currency).update(rate: rate, updated_at: DateTime.now)
    end
  end
end
