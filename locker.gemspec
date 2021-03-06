# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "locker/version"

Gem::Specification.new do |s|
  s.name        = "locker"
  s.version     = Locker::VERSION
  s.authors     = ["Cora Sutton", "Justin Greer"]
  s.email       = ["nate@zencoder.com", "justin@zencoder.com"]
  s.summary     = %q{Locker is a locking mechanism for limiting the concurrency of ruby code using the database.}
  s.description = %q{Locker is a locking mechanism for limiting the concurrency of ruby code using the database. It presently only works with PostgreSQL.}

  s.rubyforge_project = "locker"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_dependency "activerecord",  ">=3.2", "<5"
  s.add_development_dependency "pg", "~> 0"
  s.add_development_dependency "rspec", "~> 3.2"
  s.add_development_dependency "pry", "~> 0.10.4"
  s.add_development_dependency "pry-byebug", "~> 3.4.2"
end
