require "bundler/gem_tasks"
require 'rake/testtask'
require 'rdoc/task'

desc 'Default: run tests for generator'
task default: :test

Rake::TestTask.new(:test) do |test|
  test.libs << "test" # here is the test_helper
  test.pattern = "test/generators/**/*_test.rb"
end
