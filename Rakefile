require 'rubygems'
require 'bundler'

begin
  Bundler.setup(:default, :development, :test)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

require 'rake'
require 'rake/testtask'
require "bundler/gem_tasks"
require "rake/testtask"


Rake::TestTask.new(:test) do |test|
  test.libs << 'lib:test/unit'

  test.pattern = 'test/unit/**/*_test.rb'
  test.verbose = true
end

task default: :test
