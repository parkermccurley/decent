require "spec_helper"

describe "Constant" do
  describe ".currency" do
    it "should return a hash" do
      expect(Decent::Constant.currency).to be_a Hash
    end

    it "should return the BitcoinConstant class when passed 'BTC'" do
      expect(Decent::Constant.currency["BTC"]).to equal Decent::BitcoinConstant
    end
    it "should return the EthereumConstant class when passed 'ETH'" do
      expect(Decent::Constant.currency["ETH"]).to equal Decent::EthereumConstant
    end
    it "should return the LitecoinConstant class when passed 'LTC'" do
      expect(Decent::Constant.currency["LTC"]).to equal Decent::LitecoinConstant
    end
  end
end
