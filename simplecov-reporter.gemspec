# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'simplecov-reporter/version'

Gem::Specification.new do |s|
  s.name        = "simplecov-reporter"
  s.version     = SimpleCov::Formatter::Reporter::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jay OConnor"]
  s.email       = ["jaydoconnor@gmail.com"]
  s.homepage    = "https://github.com/jdoconnor/simplecov-reporter"
  s.summary     = %Q{Report the simplecov coverage data to a server}
  s.description = %Q{Report the simplecov coverage data to a server}

  s.rubyforge_project = "simplecov-reporter"
  s.add_dependency 'httparty'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end