program :name, "coin"
program :version, "0.0.1"
program :description, "A ruby command line application for managing cryptocurrency holdings."

# Test command to check
command :exchange_rate do |command|
  command.syntax = "coin exchange_rate"
  command.description = "Run tasks related to exchange rates"
  command.option "--currency STRING", String, "Selects currency for task (BTC, LTC, ETH)"
  command.action do |args, options|
    ExchangeRateCommand.execute args, options
  end
end
