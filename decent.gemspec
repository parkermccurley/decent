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

  spec.files         = `git ls-files`.split($\)
  spec.executables   = ["decent"]
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "commander", ["~> 4.0"]
  spec.add_runtime_dependency "rest-client", ["~> 2.0"]
  spec.add_runtime_dependency "sequel", ["~> 4.0"]
  spec.add_runtime_dependency "sqlite3", ["~> 1.3"]
end
