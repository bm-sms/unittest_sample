require 'minitest/autorun'
require_relative '../calculator.rb'

class TestReversePolishCalculator < Minitest::Test
  def setup
    @calculator = Calculator.new
  end

  def test_calculator_should_calculate_with_plus_operator
    assert_equal 3, @calculator.calc('1 2 +')
  end
end
