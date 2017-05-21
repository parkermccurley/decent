class ListHodlingCommand
  def self.execute(args)
    hodlings = Database[:holdings]
    hodlings.each do |hodling|
      nickname   = hodling[:nickname]
      balance    = hodling[:balance]
      currency   = hodling[:currency]
      updated_at = hodling[:updated_at]

      puts "#{nickname} has a balance of #{balance} #{currency} as of #{updated_at}."
    end
  end
end
