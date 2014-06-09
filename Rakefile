require 'bundler/gem_tasks'
require 'rake/testtask'
require 'yard'
require 'rubocop/rake_task'

Rake::TestTask.new(:test) do |t|
  t.libs = %w(lib test)
  t.test_files = FileList['test/**/test_*.rb']
end

YARD::Rake::YardocTask.new

RuboCop::RakeTask.new

task default: :test
