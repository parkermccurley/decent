program :name, "coin"
program :version, "0.0.1"
program :description, "A ruby command line application for managing cryptocurrency holdings."

# Test command to check
command :test do |c|
  test_command = TestCommand.new(c)
  test_command.activate
end
