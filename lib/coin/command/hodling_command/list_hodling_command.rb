class ListHodlingCommand
  def self.execute
    Database[:holdings].each { |hodling| puts "#{hodling[:nickname]}: #{hodling[:balance]} #{hodling[:currency]}" }
  end
end
