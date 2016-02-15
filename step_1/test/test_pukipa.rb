require 'minitest/autorun'
require_relative '../pukipa.rb'

class TestPukipa < Minitest::Test
  def test_to_html
    pu = Pukipa.new('* 見出し')
    assert_equal '<h2>見出し</h2>', pu.to_html
  end
end
