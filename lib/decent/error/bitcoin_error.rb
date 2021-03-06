module Decent
  class BitcoinError
    def self.get_balance_error(address, status)
      return case status
      when "404"
        "404 error while getting balance of Bitcoin address #{address}. Resource is unavailable."
      when "500"
        "500 error while getting balance of Bitcoin address #{address}. You may have stored an invalid address."
      else
        "Unknown error while getting balance of Bitcoin address #{address}."
      end
    end

    def self.get_exchange_rate_error(status)
      return case status
      when "404"
        "404 error while getting exchange rate of Bitcoin.  Resource is unavailable."
      else
        "Unknown error while getting exchange rate of Bitcoin."
      end
    end
  end
end
