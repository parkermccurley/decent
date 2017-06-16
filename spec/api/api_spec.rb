require "spec_helper"

describe "API" do
  describe ".currency" do
    it "should return a hash" do
      expect(Decent::API.currency).to be_a Hash
    end

    context " when passed 'BTC'" do
      it "should return the BitcoinConstant class" do
        expect(Decent::API.currency["BTC"]).to equal Decent::BitcoinAPI
      end
    end

    context "when passed 'ETH'" do
      it "should return the EthereumConstant class" do
        expect(Decent::API.currency["ETH"]).to equal Decent::EthereumAPI
      end
    end

    context "when passed 'LTC'" do
      it "should return the LitecoinConstant class" do
        expect(Decent::API.currency["LTC"]).to equal Decent::LitecoinAPI
      end
    end
  end
end
