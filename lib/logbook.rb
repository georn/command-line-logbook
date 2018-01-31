require 'log.rb'

class Logbook
  attr_reader :logbook

  def initialize
    @logbook = Log.new.entries
  end


  def read
    output = ""
    @logbook.each do | entry |
      output = "- #{entry}"
    end
    output
  end

  def add_entry(entry)
    @logbook.push(entry)
  end
end
