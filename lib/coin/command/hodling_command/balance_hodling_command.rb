class BalanceHodlingCommand
  def self.execute(args)
    puts Database[:holdings].where(address: args[1])[:balance]
  end
end
