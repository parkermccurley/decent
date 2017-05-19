class ListExchangeRateCommand
  def self.execute
    Database[:exchange_rates].each { |exchange_rate| puts "#{exchange_rate[:currency]}: #{exchange_rate[:rate]} USD" }
  end
end
