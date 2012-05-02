# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "Empact-activerecord-import"
  s.version = "0.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Zach Dennis", "Ben Woosley"]
  s.date = "2012-05-02"
  s.description = "Extraction of the ActiveRecord::Base#import functionality from ar-extensions for Rails 3 and beyond"
  s.email = "ben.woosley@gmail.com"
  s.extra_rdoc_files = [
    "README.markdown"
  ]
  s.files = [
    "README.markdown",
    "Rakefile",
    "VERSION",
    "lib/activerecord-import.rb",
    "lib/activerecord-import/active_record/adapters/abstract_adapter.rb",
    "lib/activerecord-import/active_record/adapters/jdbcmysql_adapter.rb",
    "lib/activerecord-import/active_record/adapters/mysql2_adapter.rb",
    "lib/activerecord-import/active_record/adapters/mysql_adapter.rb",
    "lib/activerecord-import/active_record/adapters/postgresql_adapter.rb",
    "lib/activerecord-import/active_record/adapters/sqlite3_adapter.rb",
    "lib/activerecord-import/adapters/abstract_adapter.rb",
    "lib/activerecord-import/adapters/mysql_adapter.rb",
    "lib/activerecord-import/adapters/postgresql_adapter.rb",
    "lib/activerecord-import/adapters/sqlite3_adapter.rb",
    "lib/activerecord-import/base.rb",
    "lib/activerecord-import/import.rb",
    "lib/activerecord-import/synchronize.rb"
  ]
  s.homepage = "http://github.com/Empact/activerecord-import"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.11"
  s.summary = "Bulk-loading extension for ActiveRecord"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, ["~> 3.0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 1.4.0"])
    else
      s.add_dependency(%q<activerecord>, ["~> 3.0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 1.4.0"])
    end
  else
    s.add_dependency(%q<activerecord>, ["~> 3.0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 1.4.0"])
  end
end

