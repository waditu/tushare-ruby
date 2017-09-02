# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tushare/version'

Gem::Specification.new do |spec|
  spec.name          = "tushare"
  spec.version       = Tushare::VERSION
  spec.authors       = ["Robot Jiang", "Roger Mo"]
  spec.email         = ["robot.z.jiang@gmail.com", "ShallmentMo@gmail.com"]

  spec.summary       = %q{Tushare-Ruby is ruby version of [tushare](https://github.com/waditu/tushare)}
  spec.description   = %q{Tushare-Ruby is ruby version of [tushare](https://github.com/waditu/tushare). TuShare is a utility for crawling historical data of China stocks}
  spec.homepage      = "https://github.com/waditu/tushare-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty", "~> 0.14"
  spec.add_dependency "nokogiri", "~> 1.7"
  spec.add_dependency "roo", "~> 2.7"
  spec.add_dependency "roo-xls", "~> 1.0"

  spec.add_development_dependency "table_print", "~> 1.5"
  spec.add_development_dependency "awesome_print", "~> 1.7"
  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.4"
end
