class Logbook
  attr_reader :logbook

  def initialize
    @logbook = []
  end


  def read
    @logbook
  end

  def add_entry(entry)
    p @logbook
    @logbook.push(entry)
    p @logbook
  end
end