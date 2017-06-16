module Decent
  class Constants
    GET_BITCOIN_BALANCE_URI = "https://blockchain.info/q/addressbalance/"
    GET_BITCOIN_EXCHANGE_RATE_URI = "https://api.coinbase.com/v2/exchange-rates?currency=BTC"

    GET_ETHER_BALANCE_URI = "https://api.blockcypher.com/v1/eth/main/addrs/"
    GET_ETHER_EXCHANGE_RATE_URI = "https://api.coinbase.com/v2/exchange-rates?currency=ETH"

    GET_LITECOIN_BALANCE_URI = "https://ltc.blockr.io/api/v1/address/info/"
    GET_LITECOIN_EXCHANGE_RATE_URI = "https://api.coinbase.com/v2/exchange-rates?currency=LTC"
  end
end
