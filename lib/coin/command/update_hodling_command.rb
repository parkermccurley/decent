class UpdateHodlingCommand
  def self.execute
    Database[:holdings].each do |hodling|
      case hodling[:currency]
      when "BTC"
        # call BTC Address api
        puts "I'm a BTC balance"
      when "LTC"
        # call LTC Address api
        puts "I'm an LTC balance"
      when "ETH"
        # call ETH Address api
        puts "I'm an ETH balance"
      end
    end
  end
end
