module Decent
  class StoreHodling
    def self.store(hodling)
      id                = hodling[:id]
      address           = hodling[:address]
      currency          = hodling[:currency]
      balance           = hodling[:balance]
      recorded_at       = hodling[:updated_at]
      created_at        = DateTime.now
      historic_hodlings = Database[:historic_holdings]

      historic_hodlings.insert({
        holding_id: id,
        address: address,
        currency: currency,
        balance: balance,
        recorded_at: recorded_at,
        created_at: created_at
      })
    end
  end
end
