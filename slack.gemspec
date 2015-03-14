# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'slack/version'

Gem::Specification.new do |spec|
  spec.name          = "slack-webhook"
  spec.version       = Slack::VERSION
  spec.authors       = ["Jeffrey Warren"]
  spec.email         = ["jtwarren@alum.mit.edu"]
  spec.summary       = %q{Provides basic slack webhook functionality}
  spec.description   = ""
  spec.homepage      = "https://github.com/jtwarren/slack-webhook"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
