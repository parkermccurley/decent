class ExchangeRateCommand
  def self.execute(args, options)
    command = args.first

    case command
    when "list"
      ListExchangeRateCommand.execute
    when "update"
      UpdateExchangeRateCommand.execute
    end
  end
end
