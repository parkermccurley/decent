require "spec_helper"

describe "Error" do
  describe ".currency" do
    it "should return a hash" do
      expect(Decent::Error.currency).to be_a Hash
    end

    it "should return the BitcoinConstant class when passed 'BTC'" do
      expect(Decent::Error.currency["BTC"]).to equal Decent::BitcoinError
    end
    it "should return the EthereumConstant class when passed 'ETH'" do
      expect(Decent::Error.currency["ETH"]).to equal Decent::EthereumError
    end
    it "should return the LitecoinConstant class when passed 'LTC'" do
      expect(Decent::Error.currency["LTC"]).to equal Decent::LitecoinError
    end
  end
end
