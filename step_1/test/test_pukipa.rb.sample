require 'minitest/autorun'
require_relative '../pukipa.rb'

class TestPukipa < Minitest::Test
  def test_to_html_should_parse_header_element
    pu = Pukipa.new('* 見出し')
    assert_equal '<h2>見出し</h2>', pu.to_html
  end

  def test_to_html_should_parse_list_element
    pu = Pukipa.new('-リスト表記')
    str = "<ul><li>リスト表記</li></ul>"
    assert_equal str, pu.to_html
  end
end
