class UpdateHodling
  def self.execute(args)
    hodlings = Database[:holdings]
    hodlings.each do |hodling|
      currency = hodling[:currency]
      address  = hodling[:address]
      id       = hodling[:id]
      balance  = API.currency[currency].get_balance address

      hodlings.where(id: id).update(balance: balance, updated_at: DateTime.now)
    end
  end
end
