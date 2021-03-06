# frozen_string_literal: true

require 'erb'

# Create a MarkDown resume from MarkDown parts using an ERB template
class Resume
  attr_accessor :components, :resume_file, :resume_template

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
