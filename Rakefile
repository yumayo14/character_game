# frozen_string_literal: true

require 'rubocop/rake_task'
require 'rspec/core/rake_task'
require 'yard'
require 'yard/rake/yardoc_task'

RuboCop::RakeTask.new
RSpec::Core::RakeTask.new do |t|
  t.verbose = false
end
YARD::Rake::YardocTask.new do |t|
  t.files = %w(*.rb calculators/*.rb calculators/*/.rb elements/*.rb equipments/*.rb jobs/*.rb sexes/*.rb skills/*.rb)
end

desc 'rubocopとrspecを同時に走らせるタスク'
task strict_test: %i(spec rubocop)

desc 'strict_testの後にドキュメントを作成するタスク'
task strict_test_with_docs: %i(spec rubocop yard)
