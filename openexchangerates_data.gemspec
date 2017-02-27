# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'openexchangerates_data/version'

Gem::Specification.new do |spec|
  spec.name          = "openexchangerates_data"
  spec.version       = OpenexchangeratesData::VERSION
  spec.authors       = ["balyam"]
  spec.email         = ["bolatumarov@gmail.com"]

  spec.summary       = %q{A Ruby wrapper to the Openexchangerates API.}  
  spec.homepage      = "https://docs.openexchangerates.org/"
  spec.license       = "MIT"

  
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "httparty", "~> 0.14.0"
end
