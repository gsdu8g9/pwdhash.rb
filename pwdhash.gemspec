# -*- encoding: utf-8 -*-
require File.expand_path('../lib/pwdhash/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Chris Yuen"]
  gem.email         = ["chris@kizzx2.com"]
  gem.description   = "Command line version of Stanford PwdHash"
  gem.summary       = "Command line version of Stanford PwdHash"

  gem.licenses      = ['GPL-3.0']
  gem.homepage      = 'https://github.com/kizzx2/pwdhash.rb'

  gem.test_files    = ['pwdhash_test.rb']

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "pwdhash"
  gem.require_paths = ["lib"]
  gem.version       = PwdHash::VERSION

  gem.add_dependency('highline', '~> 1.6', '>= 1.6.12')
  gem.add_dependency('ruby-hmac', '~> 0.4', '>= 0.4.0')
  gem.add_dependency('backports', '~> 3.6', '>= 3.6.4')
end
