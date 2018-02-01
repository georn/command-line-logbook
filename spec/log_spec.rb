require 'rspec'
require 'log.rb'
require 'logbook.rb'

describe Log do
  describe '#initialize' do
    it 'exist' do
      expect(subject).to be_truthy
    end

    it 'has a reader for entries' do
      expect(subject.entries).to eq([])
    end

    it 'stores entries' do
      logbook = Logbook.new
      logbook.add_entry('first entry')
      expect(logbook.read).to eq('- first entry')
    end
  end
end
