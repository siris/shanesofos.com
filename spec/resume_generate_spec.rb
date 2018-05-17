# frozen_string_literal: true

require_relative '../lib/resume'
require 'fileutils'
require 'gimli'

describe 'Resume Generate' do
  before :all do
    FileUtils.mkdir 'spec/tmp'
    @resume = Resume.new('spec/tmp/resume_ssofos.md', 'resume_ssofos.erb')
  end

  it 'should generate a new PDF resume file' do
    @resume.create
    config = Gimli.configure do |c|
      c.file = 'spec/tmp/resume_ssofos.md'
      c.output_dir = 'spec/tmp'
    end

    Gimli.process! config

    expect(File.exist?('spec/tmp/resume_ssofos.pdf')).to be_truthy
  end

  after do
    FileUtils.rm_rf 'spec/tmp'
  end
end
