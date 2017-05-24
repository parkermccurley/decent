class UpdateExchangeRate
  def self.execute
    exchange_rates = Database[:exchange_rates]
    exchange_rates.each do |exchange_rate|
      currency = exchange_rate[:currency]
      id       = exchange_rate[:id]
      rate     = API.currency[currency].get_exchange_rate

      if (exchange_rates.where(id: id).update(rate: rate, updated_at: DateTime.now))
        StoreExchangeRate.store exchange_rate
      end
    end
  end
end
