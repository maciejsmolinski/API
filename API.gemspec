# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "API/version"

Gem::Specification.new do |s|
  s.name        = "API"
  s.version     = API::VERSION
  s.authors     = ["Maciej Smolinski"]
  s.email       = ["msblaze89@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Facebook Graph API lib using Weary Client}
  s.description = %q{Facebook Graph API lib using Weary Client. Flexible enough to support any API (twitter, github etc.) and format (json, xml etc.)}

  s.rubyforge_project = "API"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency 'weary', ['~> 1.0.0']

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
