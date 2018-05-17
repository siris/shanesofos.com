# frozen_string_literal: true

require 'rspec/core/rake_task'
require 'rubocop/rake_task'

RSpec::Core::RakeTask.new
RuboCop::RakeTask.new

task default: %i[spec rubocop]

desc 'build mkdocs static site'
task :build_mkdocs do
  system 'mkdocs build --clean'
end

desc 'install local Pip versions of mkdocs and mkdocs-material'
task :install_mkdocs do
  system 'pip install --user -r requirements.txt'
end

desc 'generate resume Markdown and PDF files'
task :resume do
  system './resume_generate.rb'
end

desc 'test mkdocs changes with mkdocs internal local web server'
task :test_mkdocs do
  system 'mkdocs serve'
end
