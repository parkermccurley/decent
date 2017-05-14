class UpdateExchangeRateCommand
  def self.execute(args, options)
    case options.currency
    when "BTC"
      BitcoinExchangeRateApi.call
    when "LTC"
      LitecoinExchangeRateApi.call
    when "ETH"
      EtherExchangeRateApi.call
    else
      [BitcoinExchangeRateApi, LitecoinExchangeRateApi, EtherExchangeRateApi].each do |api|
        api.call
      end
    end
  end
end
