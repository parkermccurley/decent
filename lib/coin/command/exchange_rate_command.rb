class ExchangeRateCommand
  def self.execute(args, options)
    case args[0]
    when "update"
      UpdateExchangeRateCommand.execute args, options
    end
  end
end
