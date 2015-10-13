# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "autoscaler/version"

Gem::Specification.new do |s|
  s.name        = "autoscale"
  s.version     = Autoscaler::VERSION
  s.authors     = ["Justin Love", "Fix Peña"]
  s.email       = ["git@JustinLove.name"]
  s.homepage    = ""
  s.summary     = %q{Start/stop Sidekiq workers on Heroku}
  s.description = %q{Currently provides a Sidekiq middleware that does 0/1 scaling of Heroku processes}

  s.rubyforge_project = "autoscaler"

  s.files         = Dir["CHANGELOG.md", "README.md", "lib/**/*", "examples/**/*"]
  s.test_files    = Dir["Guardfile", "spec/**/*.rb"]

  s.require_paths = ["lib"]

  s.add_runtime_dependency "sidekiq", '~> 3.5'
  s.add_runtime_dependency "heroku-api"

  s.add_development_dependency "bundler"
  s.add_development_dependency "rspec", "< 3"
end
