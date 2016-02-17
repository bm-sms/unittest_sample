require 'minitest/autorun'
require_relative '../calculator.rb'

class TestReversePolishCalculator < Minitest::Test
  def setup
    @calculator = Calculator.new
  end

  def test_calculator_should_calculate_with_plus_operator
    assert_equal 3, @calculator.calc('1 2 +')
  end

  def test_calculator_should_calculate_with_asterisk
    assert_equal 200, @calculator.calc('10 20 *')
  end

  def test_calculator_should_calculate_with_both_asterisk_and_plus_operator
    assert_equal 36, @calculator.calc('4 2 7 + *')
  end
end
