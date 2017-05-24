module Decent
  class ExchangeRate
    def self.execute(args)
      command  = args.first
      commands = {
        "list"   => ListExchangeRate,
        "update" => UpdateExchangeRate
      }

      commands[command].execute
    end
  end
end
