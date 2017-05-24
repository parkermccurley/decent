module Decent
  class UpdateHodling
    def self.execute(args)
      hodlings = Database[:holdings]
      hodlings.each do |hodling|
        currency = hodling[:currency]
        address  = hodling[:address]
        id       = hodling[:id]
        balance  = API.currency[currency].get_balance address

        if (hodlings.where(id: id).update(balance: balance, updated_at: DateTime.now))
          StoreHodling.store hodling
        end
      end
    end
  end
end
