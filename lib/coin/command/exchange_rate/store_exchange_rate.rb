class StoreExchangeRate
  def self.store(exchange_rate)
    id                      = exchange_rate[:id]
    currency                = exchange_rate[:currency]
    rate                    = exchange_rate[:rate]
    recorded_at             = exchange_rate[:updated_at]
    created_at              = DateTime.now
    historic_exchange_rates = Database[:historic_exchange_rates]

    historic_exchange_rates.insert({
      exchange_rate_id: id,
      currency: currency,
      rate: rate,
      recorded_at: recorded_at,
      created_at: created_at
    })
  end
end
