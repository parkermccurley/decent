class ListExchangeRateCommand
  def self.execute
    exchange_rates = Database[:exchange_rates]
    exchange_rates.each do |exchange_rate|
      puts exchange_rate
    end
  end
end
