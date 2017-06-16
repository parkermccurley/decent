require "spec_helper"

describe "LitecoinConstant" do
  it "should have a GET_BALANCE_URI string" do
    expect(Decent::LitecoinConstant::GET_BALANCE_URI.length).to be > 0
  end

  it "should have a GET_EXCHANGE_RATE_URI string" do
    expect(Decent::LitecoinConstant::GET_EXCHANGE_RATE_URI.length).to be > 0
  end
end
