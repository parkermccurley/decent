class ExchangeRateCommand
  def self.execute(args, options)
    command  = args.first
    commands = {
      "list"   => ListExchangeRateCommand,
      "update" => UpdateExchangeRateCommand
    }

    commands[command].execute
  end
end
