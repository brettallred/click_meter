require "bundler/gem_tasks"
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.pattern = "test/*_test.rb"
end

task :console do
  exec "irb -r click_meter -I ./lib -r ./debug_settings"
end
