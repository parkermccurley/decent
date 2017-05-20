class HodlingCommand
  def self.execute(args, options)
    command = args.first

    case command
    when "add"
      AddHodlingCommand.execute
    when "list"
      ListHodlingCommand.execute
    when "remove"
      RemoveHodlingCommand.execute args
    when "show"
      ShowHodlingCommand.execute args
    when "update"
      UpdateHodlingCommand.execute
    end
  end
end
