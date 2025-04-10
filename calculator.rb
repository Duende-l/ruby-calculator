def add(a, b)
    a + b
  end
  
  def subtract(a, b)
    a - b
  end
  
  def multiply(a, b)
    a * b
  end
  
  def divide(a, b)
    return 'На нуль ділити не можна!' if b == 0
    a.to_f / b
  end
  
  puts "Введіть перше число:"
  num1 = gets.chomp.to_f
  
  puts "Введіть друге число:"
  num2 = gets.chomp.to_f
  
  puts "Оберіть операцію (+, -, *, /):"
  operation = gets.chomp
  
  result = case operation
  when '+'
    add(num1, num2)
  when '-'
    subtract(num1, num2)
  when '*'
    multiply(num1, num2)
  when '/'
    divide(num1, num2)
  else
    "Невірна операція"
  end
  
  puts "Результат: #{result}"