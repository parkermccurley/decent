lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "coin/version"

Gem::Specification.new do |spec|
  spec.name          = "coin"
  spec.version       = Coin::VERSION
  spec.authors       = ["moondog"]
  spec.email         = ["parkermccurlz@gmail.com"]

  spec.summary       = %{Coin is a command line application for managing cryptocurrency holdings.}
  spec.homepage      = "https://github.com/parkertm/coin"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |file|
    file.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |file| File.basename(file) }
  spec.require_paths = ["lib"]
end
