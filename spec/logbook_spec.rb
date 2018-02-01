require 'rspec'
require 'logbook.rb'

describe Logbook do
  describe 'initializes the logbook' do
    it 'exist' do
      expect(subject).to be_truthy
    end
  end

  describe '#read' do
    it 'displays an empty log by default' do
      expect(subject.read).to eq('')
    end
  end

  describe '#add_entry' do
    it 'adds a new entry to the log' do
      subject.add_entry('new entry')
      expect(subject.read).to eq('- new entry')
    end
  end

  describe '#lock'
end
