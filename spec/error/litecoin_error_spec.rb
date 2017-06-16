require "spec_helper"

describe "LitecoinError" do
  describe ".get_balance_error" do
    context "when passed 404" do
      it "should return a string containing the address and '404'" do
        expect(Decent::LitecoinError.get_balance_error "123", "404").to include "123", "404"
      end
    end

    context "when passed 500" do
      it "should return a string containing the address and '500'" do
        expect(Decent::LitecoinError.get_balance_error "123", "500").to include "123", "500"
      end
    end

    context "when not passed 404 or 500" do
      it "should return a string containing the address" do
        expect(Decent::LitecoinError.get_balance_error "123", "666").to include "123", "Unknown"
      end
    end
  end

  describe ".get_exchange_rate_error" do
    context "when passed 404" do
      it "should return a string containing '404'" do
        expect(Decent::LitecoinError.get_exchange_rate_error "404").to include "404"
      end
    end

    context "when not passed 404" do
      it "should return a string" do
        expect(Decent::LitecoinError.get_exchange_rate_error "666").to include "Unknown"
      end
    end
  end
end
