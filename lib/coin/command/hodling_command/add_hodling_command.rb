class AddHodlingCommand
  def self.execute(args)
    cli      = HighLine.new
    nickname = cli.ask "What is the nickname of this hodling?", String
    address  = cli.ask "What is the address of this hodling?", String
    currency = cli.ask "What is the currency of this hodling?", String
    hodlings = Database[:holdings]

    hodlings.insert({
      nickname: nickname,
      address: address,
      currency: currency,
      balance: 0.00,
      created_at: DateTime.now,
      updated_at: DateTime.now
    })
  end
end
