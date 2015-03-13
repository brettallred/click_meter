# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'click_meter/version'

Gem::Specification.new do |spec|
  spec.name          = "click_meter"
  spec.version       = ClickMeter::VERSION
  spec.authors       = ["Brett Allred"]
  spec.email         = ["brettallred@gmail.com"]
  spec.homepage      = "https://github.com/brettallred/click_meter"
  spec.summary       = %q{Ruby gem that implements the click meter api}
  spec.description   = %q{Ruby gem that implements the click meter api}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "active_rest_client", "~> 1.0"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest", "~> 5.5"
  spec.add_development_dependency "webmock", '~> 1.20.4'
  spec.add_development_dependency "vcr", '~> 2.9.3'
  spec.add_development_dependency "minitest-rg", '~> 5.1.0'
end
