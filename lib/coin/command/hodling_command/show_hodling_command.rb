class ShowHodlingCommand
  def self.execute(args)
    hodlings   = Database[:holdings]
    nickname   = args[1]
    hodling    = hodlings.where(nickname: nickname).first
    balance    = hodling[:balance]
    currency   = hodling[:currency]
    updated_at = hodling[:updated_at]

    puts "#{nickname} has a balance of #{balance} #{currency} as of #{updated_at}."
  end
end
