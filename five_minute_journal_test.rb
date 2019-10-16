require 'minitest/pride'
require 'minitest/autorun'
require_relative 'five_minute_journal'

class FiveMinuteJournalTest < Minitest::Test
  def test_displays_todays_date
    # skip
    today = Time.new
    expected = today.strftime("%d-%b-%Y")
    assert_equal expected, FiveMinuteJournal.new.date
  end

  def test_displays_todays_quote
    # skip
    day_number = Time.now.day - 1
    expected = CSV.read('quotes.csv')[day_number]
    assert_equal expected, FiveMinuteJournal.new.quote
  end

  def test_to_s_shows_all
    skip
  end
end
