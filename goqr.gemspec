# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'goqr/version'

Gem::Specification.new do |s|
  s.name        = 'goqr'
  s.version     = Goqr::VERSION
  s.authors     = ['Patricio Mac Adden']
  s.email       = ['patriciomacadden@gmail.com']
  s.homepage    = 'https://github.com/patriciomacadden/goqr'
  s.summary     = %q{QR codes for ruby/rails using goqr.me API}
  s.description = %q{QR codes for ruby/rails using goqr.me API}

  s.rubyforge_project = 'goqr'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
  s.add_dependency 'railties'
  s.add_dependency 'activesupport'
end
