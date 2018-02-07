#!/usr/bin/env ruby

require_relative 'lib/resume'

ssofos_resume = Resume.new('resume_ssofos.md', 'resume_ssofos.erb')
ssofos_resume.create
ssofos_resume.info
