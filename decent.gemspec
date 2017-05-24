lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "decent/version"

Gem::Specification.new do |spec|
  spec.name          = "decent"
  spec.version       = Decent::VERSION
  spec.authors       = ["moondog"]
  spec.email         = ["parkermccurlz@gmail.com"]

  spec.summary       = %{Decent is a command line application for managing cryptocurrency holdings.}
  spec.homepage      = "https://github.com/parkertm/decent"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |file|
    file.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |file| File.basename(file) }
  spec.require_paths = ["lib"]
end
