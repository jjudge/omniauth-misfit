# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-misfit/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-misfit"
  s.version     = OmniAuth::Misfit::VERSION
  s.authors     = ["Jeff Judge"]
  s.email       = ["jeff@judge.io"]
  s.homepage    = "http://github.com/jjudge/omniauth-misfit"
  s.summary     = %q{Misfit strategy for OmniAuth}
  s.description = %q{Misfit strategy for OmniAuth}
  s.license     = 'MIT'

  s.files         = `git ls-files`.split($\)
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'omniauth-oauth', '~> 1.0'
end