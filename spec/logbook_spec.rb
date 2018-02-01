require 'rspec'
require 'logbook.rb'

describe Logbook do
  describe '#initialize' do
    it 'exist' do
      expect(subject).to be_truthy
    end
  end

  describe '#read' do
    it 'reads the entries which are empty log by default' do
      expect(subject.read).to eq('')
    end
  end

  describe '#add_entry' do
    it 'adds a new entry to the log and can be read' do
      subject.add_entry('new entry')
      expect(subject.read).to eq('- new entry')
    end
  end

  describe '#lock' do
  end
end
