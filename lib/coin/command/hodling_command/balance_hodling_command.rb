class BalanceHodlingCommand
  def self.execute(args)
    address = args[1]
    puts Database[:holdings].where(address: address)[:balance]
  end
end
