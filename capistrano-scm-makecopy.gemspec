# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "capistrano-scm-makecopy"
  s.version     = "0.8.2"
  s.licenses    = ["MIT"]
  s.authors     = ["Morphling"]
  s.email       = ["283893159@qq.com"]
  s.homepage    = "https://github.com/Tindtily/capistrano-scm-makecopy"
  s.summary     = %q{Copy strategy for capistrano 3.x}
  s.description = %q{Copy strategy for capistrano 3.x}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_dependency "capistrano", "~> 3.0"
end
