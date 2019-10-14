class FiveMinuteJournal
  attr_reader :date

  def initialize
    @date = Time.now
  end

  def date
    @date.strftime("%d-%b-%Y")
  end
end
