class HodlingCommand
  def self.execute(args, options)
    command  = args.first
    commands = {
      "add"    => AddHodlingCommand,
      "list"   => ListHodlingCommand,
      "remove" => RemoveHodlingCommand,
      "show"   => ShowHodlingCommand,
      "update" => UpdateHodlingCommand
    }

    commands[command].execute args
  end
end
