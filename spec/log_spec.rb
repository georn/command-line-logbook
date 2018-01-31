require 'rspec'
require 'log.rb'
require 'logbook.rb'

# let(:log) { subject }
# let(:logbook) { Logbook.new(:log)}

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
      # p logbook.read
      expect(logbook.read).to eq('- first entry')
    end
  end
end
