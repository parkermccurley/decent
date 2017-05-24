module Coin
  class RemoveHodling
    def self.execute(args)
      hodlings = Database[:holdings]
      nickname = args[1]
      hodling = hodlings.where(nickname: nickname)

      hodling.delete
    end
  end
end
