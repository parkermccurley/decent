class TestCommand
  def initialize(command)
    @command = command
  end

  def activate
    @command.syntax = "coin test"
    @command.description = "execute test command"
    @command.action do |args, options|
      test_call = APICall.new("https://api.cryptonator.com/api/ticker/btc-usd", "get")
      puts test_call.call
    end
  end
end
