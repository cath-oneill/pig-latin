# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'piglatin/version'

Gem::Specification.new do |spec|
  spec.name          = "piglatin"
  spec.version       = Piglatin::VERSION
  spec.authors       = ["Catherine O'Neill"]
  spec.email         = ["cathzozo@gmail.com"]
  spec.summary       = %q{This is a gem that translates words into Pig Latin.}
  spec.description   = %q{Method for translating individual words.  Call with PigLatin.translate(word).}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14.1"
end
