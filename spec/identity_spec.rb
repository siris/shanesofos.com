require_relative '../lib/identity'

describe Identity do
  before :all do
    @person = Identity.new('Tom Bombadil', ['Merry Fellow', 'Master of wood, water and hill'])
  end

  describe '#name' do
    it 'returns a string equaling a persons name' do
      expect(@person.name).to be_kind_of(String)
      expect(@person.name).to eq('Tom Bombadil')
    end
  end

  describe '#professions' do
    it 'returns an array equaling a persons professions' do
      expect(@person.professions).to be_kind_of(Array)
      expect(@person.professions).to eq(['Merry Fellow', 'Master of wood, water and hill'])
    end
  end

  describe '.whoami' do
    it 'outputs the identity of a person' do
      expect { @person.whoami }.to output('My name is Tom Bombadil. I am an enthusiastic ' +
                                          "Merry Fellow, Master of wood, water and hill.\n").to_stdout
    end
  end
end
