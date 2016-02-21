class Calculator
  def calc(formula)
    tokens = formula.split(' ')
    return '式が不正です' if tokens.length != 3
    operand_1, operand_2, operator = tokens

    if operator == '+'
      operand_1.to_i + operand_2.to_i
    elsif operator == '*'
      operand_1.to_i * operand_2.to_i
    end
  rescue => error
    "例外が発生しました #{error}"
  end
end
