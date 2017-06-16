require "spec_helper"

describe "BitcoinConstant" do
  it "should have a GET_BALANCE_URI string" do
    expect(Decent::BitcoinConstant::GET_BALANCE_URI.length).to be > 0
  end

  it "should have a GET_EXCHANGE_RATE_URI string" do
    expect(Decent::BitcoinConstant::GET_EXCHANGE_RATE_URI.length).to be > 0
  end
end
