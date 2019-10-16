require 'csv'

class FiveMinuteJournal
  attr_reader :date, :quote

  def initialize
    @date = Time.now
    @quote = CSV.read('quotes.csv')
  end

  def date
    @date.strftime("%d-%b-%Y")
  end

  def quote
    @quote[@date.day - 1]
  end
end
