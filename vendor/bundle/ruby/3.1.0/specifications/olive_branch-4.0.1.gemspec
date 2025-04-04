# -*- encoding: utf-8 -*-
# stub: olive_branch 4.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "olive_branch".freeze
  s.version = "4.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Eli Fatsi".freeze, "David Eisinger".freeze]
  s.date = "2021-11-18"
  s.description = "Handle camel/snake/dash case conversion".freeze
  s.email = ["eli.fatsi@viget.com".freeze, "david.eisinger@viget.com".freeze]
  s.homepage = "https://github.com/vigetlabs/olive_branch".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.3.3".freeze
  s.summary = "Handle camel/snake/dash case conversion".freeze

  s.installed_by_version = "3.3.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<rails>.freeze, [">= 4.0"])
    s.add_runtime_dependency(%q<multi_json>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.5.0"])
    s.add_development_dependency(%q<appraisal>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec-rails>.freeze, [">= 0"])
  else
    s.add_dependency(%q<rails>.freeze, [">= 4.0"])
    s.add_dependency(%q<multi_json>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.5.0"])
    s.add_dependency(%q<appraisal>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-rails>.freeze, [">= 0"])
  end
end
