require "spec_helper"

describe "EthereumConstant" do
  it "should have a GET_BALANCE_URI string" do
    expect(Decent::EthereumConstant::GET_BALANCE_URI.length).to be > 0
  end

  it "should have a GET_EXCHANGE_RATE_URI string" do
    expect(Decent::EthereumConstant::GET_EXCHANGE_RATE_URI.length).to be > 0
  end
end
