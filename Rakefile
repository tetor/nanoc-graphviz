require "bundler/gem_tasks"
require 'rake/testtask'
require 'yard'

Rake::TestTask.new(:test) do |t|
  t.libs = %w( lib test )
  t.test_files = FileList['test/**/test_*.rb']
end

YARD::Rake::YardocTask.new

task :default => :test
