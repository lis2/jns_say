# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jns_say/version'

Gem::Specification.new do |spec|
  spec.name          = "jns_say"
  spec.version       = JnsSay::VERSION
  spec.authors       = ["lis2"]
  spec.email         = ["kotlarek.krzysztof@gmail.com"]
  spec.description   = %q{Last argument in every discussion}
  spec.summary       = %q{Last argument in every discussion - completly pointless gem}
  spec.homepage      = "https://github.com/lis2/jns_say"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "rainbow"
end
