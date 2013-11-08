# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "Fdist"
  gem.homepage = "http://github.com/gametheoretic/Fdist"
  gem.license = "MIT"
  gem.summary = %Q{quickie add-ons to the Array class}
  gem.description = %Q{Array methods now include :freq and :fdist, the first of which returns a Rational, and the second of which returns a hash of expression => count pairs}
  gem.email = "gametheoretic@gmail.com"
  gem.authors = ["michael d. towle"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new
