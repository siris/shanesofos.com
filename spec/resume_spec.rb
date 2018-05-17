# frozen_string_literal: true

require_relative '../lib/resume'

describe Resume do
  before :all do
    @resume = Resume.new('resume_ssofos.md', 'resume_ssofos.erb')
  end

  it 'is an Resume Object' do
    expect(@resume).to be_kind_of(Resume)
  end

  describe '#components' do
    it 'returns a Hash of all resume MarkDown components' do
      expect(@resume.components).to be_kind_of(Hash)
    end

    it 'has seven unique Resume component Hash keys' do
      expect(@resume.components.keys.length).to eq(7)
    end

    it 'has Resume component Hash key named title with a String value' do
      expect(@resume.components.key?(:title)).to be_truthy
      expect(@resume.components[:title]).to be_kind_of(String)
    end

    it 'has Resume component Hash key named objective with a String value' do
      expect(@resume.components.key?(:objective)).to be_truthy
      expect(@resume.components[:objective]).to be_kind_of(String)
    end

    it 'has Resume component Hash key named skillset with a String value' do
      expect(@resume.components.key?(:skillset)).to be_truthy
      expect(@resume.components[:skillset]).to be_kind_of(String)
    end

    it 'has Resume component Hash key named experience with a String value' do
      expect(@resume.components.key?(:experience)).to be_truthy
      expect(@resume.components[:experience]).to be_kind_of(String)
    end

    it 'has Resume component Hash key named education with a String value' do
      expect(@resume.components.key?(:education)).to be_truthy
      expect(@resume.components[:education]).to be_kind_of(String)
    end

    it 'has Resume component Hash key named interests with a String value' do
      expect(@resume.components.key?(:interests)).to be_truthy
      expect(@resume.components[:interests]).to be_kind_of(String)
    end

    it 'has Resume component Hash key named contact with a String value' do
      expect(@resume.components.key?(:contact)).to be_truthy
      expect(@resume.components[:contact]).to be_kind_of(String)
    end
  end

  describe '#resume_file' do
    it 'returns a Resume file name as a String' do
      expect(@resume.resume_file).to be_kind_of(String)
    end
  end

  describe '#resume_template' do
    it 'returns a Resume template name as a String' do
      expect(@resume.resume_template).to be_kind_of(String)
    end
  end

  describe '.build' do
    it 'generates a Resume Markdown String using an ERB template' do
      expect(@resume.build).to be_kind_of(String)
    end
  end

  describe '.create' do
    it 'builds and writes a new Resume Markdown file by rendering an ERB template' do
      expect { @resume.create }.to output.to_stdout
      expect(File.exist?(@resume.resume_file)).to be_truthy
    end
  end

  describe '.info' do
    it 'outputs information about the Resume file path and File object' do
      expect { @resume.info }.to output.to_stdout
      File.delete(@resume.resume_file)
    end
  end
end
