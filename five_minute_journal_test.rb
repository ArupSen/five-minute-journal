require 'minitest/autorun'
require_relative 'five_minute_journal'

class FiveMinuteJournalTest < Minitest::Test
  def test_displays_todays_date
    # skip
    expected = { 'B' => 9, 'I' => 1, 'L' => 0 }
    assert_equal expected, FiveMinuteJournal.to_s
  end
end
