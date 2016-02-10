require_relative './calculator'

@calculator = Calculator.new

# 解答を表示する関数
def handler(input)
  exit if input === 'quit'

  puts " => #{@calculator.calc(input)}"
end

# ユーザとのインタフェースになる関数
def repl(prompt)
  print prompt

  handler(gets.chomp!)
end

puts <<-EOM
Reverse polish calculator.
To quit REPL, enter 'quit'.

EOM

loop do
  repl '>> '
end
