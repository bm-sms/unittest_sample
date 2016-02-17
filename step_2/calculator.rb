class Calculator
  OPERAND_REGEXP  = /\d+/
  OPERATOR_REGEXP = /\+|\*/

  def initialize
    @stack = []
  end

  def calc(expression)
    expression.split(' ').each do |str|
      case str
      when OPERAND_REGEXP
        @stack.push str.to_i
      when OPERATOR_REGEXP
        calculate! str.to_sym
      end
    end

    @stack.pop
  end

  private

  def calculate!(operator)
    register = @stack.pop
    accumlator = register.send(operator, @stack.pop)

    @stack.push accumlator
  end
end
