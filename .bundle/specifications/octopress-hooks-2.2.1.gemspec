# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "octopress-hooks"
  s.version = "2.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Brandon Mathis"]
  s.date = "2014-08-14"
  s.description = "Allows access to Jekyll's site, posts and pages at different points in the life cycle of a build. Formerly known as 'jekyll-page-hooks'."
  s.email = ["brandon@imathis.com"]
  s.homepage = "http://github.com/octopress/hooks"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "Allows access to Jekyll's site, posts and pages at different points in the life cycle of a build. Formerly known as 'jekyll-page-hooks'."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<jekyll>, ["~> 2.0"])
      s.add_development_dependency(%q<clash>, ["~> 1.0"])
    else
      s.add_dependency(%q<jekyll>, ["~> 2.0"])
      s.add_dependency(%q<clash>, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<jekyll>, ["~> 2.0"])
    s.add_dependency(%q<clash>, ["~> 1.0"])
  end
end
