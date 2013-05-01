# -*- encoding: utf-8 -*-
require File.expand_path('../lib/romanic/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Klingon Code Warrior"]
  gem.email         = ["profh@cmu.edu"]
  gem.description   = %q{Converts strings and integers to and from roman numerals}
  gem.summary       = %q{This gem adds a method to the Integer class called to_roman, which converts an integer between 1 and 5000 to roman numerals. It also adds a method to String called from_roman which converts roman numerals to integers.}
  gem.homepage      = "https://github.com/profh/romanic"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "romanic"
  gem.require_paths = ["lib"]
  gem.version       = Romanic::VERSION
end
