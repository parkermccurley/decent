class ListHodlingCommand
  def self.execute
    hodlings = Database[:holdings]
    hodlings.each do |hodling|
      puts hodling
    end
  end
end
