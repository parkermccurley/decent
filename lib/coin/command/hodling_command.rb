class HodlingCommand
  def self.execute(args, options)
    case args.first
    when "add"
      AddHodlingCommand.execute
    when "balance"
      BalanceHodlingCommand.execute args
    when "list"
      ListHodlingCommand.execute
    when "remove"
      RemoveHodlingCommand.execute args
    when "update"
      UpdateHodlingCommand.execute
    end
  end
end
