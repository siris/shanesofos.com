#!/usr/bin/env ruby

require 'erb'

# Create a MarkDown resume from MarkDown parts using an ERB template
class Resume
  def initialize(file, template)
    @components = {
      title: "Shane Sofos's Resume\n==================\n---",
      objective: File.read('./mkdocs/resume/objective.md'),
      skillset: File.read('./mkdocs/resume/skillset.md'),
      experience: File.read('./mkdocs/resume/experience.md'),
      education: File.read('./mkdocs/resume/education.md'),
      interests: File.read('./mkdocs/resume/interests.md'),
      contact: "Contact\n=======\n\n* **Email:** [ssofos@gmail.com]" \
               "(mailto:ssofos@gmail.com)\n" \
               '* **Website:** [shanesofos.com](https://www.shanesofos.com)'
    }
    @resume_file = file
    @resume_template = template
  end

  def return_binding
    binding
  end

  def build
    b = binding
    ERB.new(File.read('./' + @resume_template)).result b
  end

  def create
    puts 'Combining mkdocs resume MarkDown files ' \
         'and generating single resume MarkDown file...'
    File.open(@resume_file, 'w') do |f|
      f.puts build
    end
  end

  def info
    puts "Generated Resume File: #{Dir.pwd}/#{@resume_file}\n" \
     "Generated Resume File Info: #{File.stat('./' + @resume_file).inspect}"
  end
end

ssofos_resume = Resume.new('resume_ssofos.md', 'resume_ssofos.erb')
ssofos_resume.create
ssofos_resume.info
