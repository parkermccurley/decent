module Decent
  class ShowHodling
    def self.execute(args)
      hodlings   = Database[:holdings]
      nickname   = args[1]
      hodling    = hodlings.where(nickname: nickname).first
      balance    = hodling[:balance]
      currency   = hodling[:currency]
      updated_at = hodling[:updated_at]

      exchange_rates  = Database[:exchange_rates]
      exchange_rate   = exchange_rates.where(currency: currency).first
      rate            = exchange_rate[:rate]
      rate_updated_at = exchange_rate[:updated_at]
      value_in_usd    = balance * rate

      puts "#{nickname} has a balance of #{balance} #{currency} as of #{updated_at}."
      puts "At an exchange rate of #{rate} USD, as of #{rate_updated_at}, #{nickname} is worth #{value_in_usd} USD."
    end
  end
end
