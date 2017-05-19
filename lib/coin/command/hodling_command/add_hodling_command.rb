class AddHodlingCommand
  def self.execute
    cli = HighLine.new
    nickname = cli.ask "What is the nickname of this hodling?", String
    address = cli.ask "What is the address of this hodling?", String
    currency = cli.ask "What is the currency of this hodling?", String
    hodling = {nickname: nickname, address: address, currency: currency}
    hodlings = Database[:holdings]
    hodlings.insert(nickname: hodling[:nickname], address: hodling[:address], currency: hodling[:currency], created_at: DateTime.now, updated_at: DateTime.now)
  end
end
