class RemoveHodlingCommand
  def self.execute(args)
    Database[:holdings].where(address: args[1]).delete
  end
end
