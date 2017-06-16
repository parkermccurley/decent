module Decent
  class EthereumError
    def self.get_balance_error(address, status)
      return case status
      when "404"
        "404 error while getting balance of Ethereum address #{address}. Resource is unavailable. You may have stored an invalid address."
      when "500"
        "500 error while getting balance of Ethereum address #{address}. You may have stored an invalid address."
      else
        "Unknown error while getting balance of Ethereum address #{address}."
      end
    end

    def self.get_exchange_rate_error(status)
      return case status
      when "404"
        "404 error while getting exchange rate of Ethereum.  Resource is unavailable."
      else
        "Unknown error while getting exchange rate of Ethereum."
      end
    end
  end
end
