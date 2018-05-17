#!/usr/bin/env ruby

# frozen_string_literal: true

require 'gimli'
require_relative 'lib/resume'

ssofos_resume = Resume.new('resume_ssofos.md', 'resume_ssofos.erb')
ssofos_resume.create
ssofos_resume.info

config = Gimli.configure do |c|
  c.file = 'resume_ssofos.md'
  c.output_dir = './'
end

Gimli.process! config
