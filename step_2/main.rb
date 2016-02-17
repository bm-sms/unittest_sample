require_relative './calculator'

@calculator = Calculator.new

input = gets.chomp!

exit if input === 'quit'

puts @calculator.calc(input)
