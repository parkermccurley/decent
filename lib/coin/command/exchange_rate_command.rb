class ExchangeRateCommand
  def self.execute(args, options)
    case args[0]
    when "list"
      ListExchangeRateCommand.execute
    when "update"
      UpdateExchangeRateCommand.execute
    end
  end
end
