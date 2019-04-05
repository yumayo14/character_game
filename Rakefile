require 'rspec'
require 'rubocop/rake_task'

RuboCop::RakeTask.new

desc 'rubocopとrspecを同時に走らせるタスク'
task :strict_test do
  sh 'bundle exec rspec spec/'
  Rake::Task['rubocop'].invoke
end
