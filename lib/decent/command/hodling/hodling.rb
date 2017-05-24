module Decent
  class Hodling
    def self.execute(args)
      command  = args.first
      commands = {
        "add"    => AddHodling,
        "list"   => ListHodling,
        "remove" => RemoveHodling,
        "show"   => ShowHodling,
        "update" => UpdateHodling
      }

      commands[command].execute args
    end
  end
end
