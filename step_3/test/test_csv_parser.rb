require 'minitest/autorun'
require_relative '../csv_parser.rb'

class TestCSVParser < Minitest::Test
  def setup
    @csv_parser = CSVParser.new
  end

  def test_parse_csv_text_should_parse_correctly
    assert_equal [%w(apple orange melon)], @csv_parser.parse_csv_text('apple,orange,melon')
  end

  def test_parse_should_parse_csv_file
    assert_equal [%w(one two),%w(three four), %w(five,six,six1,six2 seven)], @csv_parser.parse('example.csv')
  end
end
