require "spec_helper"

describe "Constant" do
  describe ".currency" do
    it "should return a hash" do
      expect(Decent::Constant.currency).to be_a Hash
    end

    context " when passed 'BTC'" do
      it "should return the BitcoinConstant class" do
        expect(Decent::Constant.currency["BTC"]).to equal Decent::BitcoinConstant
      end
    end

    context "when passed 'ETH'" do
      it "should return the EthereumConstant class" do
        expect(Decent::Constant.currency["ETH"]).to equal Decent::EthereumConstant
      end
    end

    context "when passed 'LTC'" do
      it "should return the LitecoinConstant class" do
        expect(Decent::Constant.currency["LTC"]).to equal Decent::LitecoinConstant
      end
    end
  end
end
