# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rash/version"

Gem::Specification.new do |s|
  s.name = %q{rash_alt}
  s.authors = ["tcocca", "Shigenobu Nishikawa"]
  s.description = %q{simple extension to Hashie::Mash for rubyified keys, all keys are converted to underscore to eliminate horrible camelCasing}
  s.email = %q{tom.cocca@gmail.com, shishi@srevo.net}
  s.homepage = "https://github.com/shishi/rash_alt"
  s.rdoc_options = ["--charset=UTF-8"]
  s.summary = %q{simple extension to Hashie::Mash for rubyified keys}

  s.version = Rash::VERSION

  s.add_dependency 'hashie', '>= 3.4'
  s.add_development_dependency 'rake', '>= 13.0.3'
  s.add_development_dependency 'rdoc', '>= 6.3.0'
  s.add_development_dependency 'rspec', '>= 3.4'

  s.require_paths = ['lib']
  s.files = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
end
