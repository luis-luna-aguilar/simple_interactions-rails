# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_interaction/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "simple_interaction-rails"
  spec.version       = SimpleInteraction::Rails::VERSION
  spec.authors       = ["Jose Boza"]
  spec.email         = ["jaboza@gmail.com"]
  spec.summary       = %q{Simple Interaction Generators for your Rails app}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency "simple_interaction", "~> 0.0.1"
  spec.add_dependency 'rails', '>= 4.2'

end
