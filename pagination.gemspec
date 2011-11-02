# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{pagination}
  s.version = "0.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Cyril David", "Joel Jauregui"]
  s.date = %q{2011-11-02}
  s.default_executable = %q{pagination}
  s.description = %q{Trying to make the pagination world a better place}
  s.email = %q{cyx.ucron@gmail.com}
  s.executables = ["pagination"]
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    ".document",
    "LICENSE",
    "README.md",
    "Rakefile",
    "VERSION",
    "bin/pagination",
    "lib/pagination.rb",
    "lib/pagination/adapters/ohm.rb",
    "lib/pagination/adapters/sunspot.rb",
    "lib/pagination/collection.rb",
    "lib/pagination/helpers.rb",
    "lib/pagination/template.rb",
    "pagination.gemspec",
    "test/helper.rb",
    "test/test_pagination.rb",
    "test/test_pagination_helpers.rb",
    "test/test_pagination_template.rb",
    "test/test_pagination_with_sunspot.rb",
    "views/paginate.erb",
    "views/paginate.haml"
  ]
  s.homepage = %q{http://github.com/sinefunc/pagination}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{A simplistic pagination library}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<mustache>, [">= 0"])
      s.add_development_dependency(%q<contest>, [">= 0"])
      s.add_development_dependency(%q<haml>, [">= 0"])
      s.add_development_dependency(%q<sunspot>, [">= 0"])
      s.add_development_dependency(%q<ohm>, [">= 0"])
      s.add_development_dependency(%q<contest>, [">= 0"])
      s.add_development_dependency(%q<haml>, [">= 0"])
      s.add_development_dependency(%q<sunspot>, [">= 0"])
      s.add_development_dependency(%q<ohm>, [">= 0"])
      s.add_development_dependency(%q<mustache>, [">= 0"])
    else
      s.add_dependency(%q<mustache>, [">= 0"])
      s.add_dependency(%q<contest>, [">= 0"])
      s.add_dependency(%q<haml>, [">= 0"])
      s.add_dependency(%q<sunspot>, [">= 0"])
      s.add_dependency(%q<ohm>, [">= 0"])
      s.add_dependency(%q<contest>, [">= 0"])
      s.add_dependency(%q<haml>, [">= 0"])
      s.add_dependency(%q<sunspot>, [">= 0"])
      s.add_dependency(%q<ohm>, [">= 0"])
      s.add_dependency(%q<mustache>, [">= 0"])
    end
  else
    s.add_dependency(%q<mustache>, [">= 0"])
    s.add_dependency(%q<contest>, [">= 0"])
    s.add_dependency(%q<haml>, [">= 0"])
    s.add_dependency(%q<sunspot>, [">= 0"])
    s.add_dependency(%q<ohm>, [">= 0"])
    s.add_dependency(%q<contest>, [">= 0"])
    s.add_dependency(%q<haml>, [">= 0"])
    s.add_dependency(%q<sunspot>, [">= 0"])
    s.add_dependency(%q<ohm>, [">= 0"])
    s.add_dependency(%q<mustache>, [">= 0"])
  end
end

