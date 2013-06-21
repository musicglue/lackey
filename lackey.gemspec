# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lackey/version'

Gem::Specification.new do |spec|
  spec.name          = "lackey"
  spec.version       = Lackey::VERSION
  spec.authors       = ["John Maxwell"]
  spec.email         = ["john@musicglue.com"]
  spec.description   = %q{Lackey is a Job Processor inspired by Minion}
  spec.summary       = %q{Lackey is a Job Processor inspired by Minion}
  spec.homepage      = "https://github.com/musicglue/lackey"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency "bunny",      "~> 0.8.0"
  spec.add_runtime_dependency "amqp",       "~> 1.0.2"
  spec.add_runtime_dependency "multi_json", "~> 1.7.7"
end
