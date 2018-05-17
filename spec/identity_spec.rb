# frozen_string_literal: true

require_relative '../lib/identity'

describe Identity do
  before :all do
    @person = Identity.new('Tom Bombadil', ['Merry Fellow', 'Master of wood, water and hill'])
  end

  it 'is an Identity Object' do
    expect(@person).to be_kind_of(Identity)
  end

  describe '#name' do
    it 'returns a persons name that is a String' do
      expect(@person.name).to eq('Tom Bombadil')
      expect(@person.name).to be_kind_of(String)
    end
  end

  describe '#professions' do
    it 'returns a list of a persons professions that is an Array' do
      expect(@person.professions).to eq(['Merry Fellow', 'Master of wood, water and hill'])
      expect(@person.professions).to be_kind_of(Array)
    end
  end

  describe '.whoami' do
    it 'outputs the identity of a person' do
      expect { @person.whoami }.to output('My name is Tom Bombadil. I am an enthusiastic ' +
                                          "Merry Fellow, Master of wood, water and hill.\n").to_stdout
    end
  end
end
