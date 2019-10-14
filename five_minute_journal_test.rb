require 'minitest/autorun'
require_relative 'five_minute_journal'

class FiveMinuteJournalTest < Minitest::Test
  def test_displays_todays_date
    # skip
    today = Time.new
    expected = "#{today.day.to_s + '-' + today.month.to_s + '-' + today.year.to_s}"
    assert_equal expected, FiveMinuteJournal.new.date
  end
end
