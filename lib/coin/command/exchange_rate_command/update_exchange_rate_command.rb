class UpdateExchangeRateCommand
  def self.execute(args, options)
    case options.currency
    when "BTC"
      BitcoinExchangeRateApi.call
    when "ETH"
      EtherExchangeRateApi.call
    when "LTC"
      LitecoinExchangeRateApi.call
    else
      [BitcoinExchangeRateApi, EtherExchangeRateApi, LitecoinExchangeRateApi].each do |api|
        api.call
      end
    end
  end
end
