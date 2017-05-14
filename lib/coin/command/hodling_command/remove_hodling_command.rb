class RemoveHodlingCommand
  def self.execute(args)
    address = args[1]
    Database[:holdings].where(address: address).delete
  end
end
