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
  gem.name = "fdist"
  gem.homepage = "http://github.com/gametheoretic/fdist"
  gem.license = "MIT"
  gem.summary = %Q{Enumerable#fdist -- returns a freq. dist.}
  gem.description = %Q{Given a block, Enumerable#fdist returns a frequency distribution of the results in the form of a Hash (sans block, distribution of raw element frequencies aka counts). Though one most often avoids imbuing a Hash w/ order-meaning, in this case the return Hash's pairs come ordered by frequency (i.e., the value side of the key-value pair).}
  gem.email = "gametheoretic@gmail.com"
  gem.authors = ["michael d. towle"]
  gem.include "lib/**/*.rb"
end
Jeweler::RubygemsDotOrgTasks.new
