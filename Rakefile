# frozen_string_literal: true

task default: %i[spec rubocop]

begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)
rescue LoadError
  # no rspec available
end

begin
  require 'rubocop/rake_task'
  desc 'Run RuboCop on all directories'
  RuboCop::RakeTask.new(:rubocop) do |task|
    task.fail_on_error = true
  end
end
