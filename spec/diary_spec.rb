require 'rspec'
require 'diary.rb'

describe Diary do
  describe 'initializes the diary' do
    it 'exist' do
      expect(Diary.new).to be_truthy
    end
  end

  describe '#add_entry'
  describe '#read'
  describe '#lock'
end