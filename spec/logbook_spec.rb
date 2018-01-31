require 'rspec'
require 'logbook.rb'

describe Logbook do
  describe 'initializes the diary' do
    it 'exist' do
      expect(Logbook.new).to be_truthy
    end
  end

  describe '#read' do
    it 'displays an empty log by default' do
      logbook = Logbook.new
      expect(logbook.read).to eq([])
    end
  end

  describe '#add_entry' do
    it 'adds a new entry to the log' do
      logbook = Logbook.new
      logbook.add_entry('new entry')
      expect(logbook.read).to eq(['new entry'])
    end
  end

  describe '#lock'
end
