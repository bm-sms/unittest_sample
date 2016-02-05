require 'minitest/autorun'
require_relative '../foo.rb'

class TestFoo < Minitest::Test
  def setup
    @foo = Foo.new
  end

  def test_hello
    assert_equal 'hello', @foo.hello
  end
end
