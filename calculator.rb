# frozen_string_literal: true

def sum(a, b)
  a + b
end

def mul(a, b)
  a * b
end

def div(a, b)
  return 'cannot be divided by 0' if b.zero?

  a / b
end

puts '+, -,  /,  *'
print 'Enter opearation:'
ops = ['+', '*', '-', '/']
op = gets.chomp

unless ops.include?(op)
  puts 'Not a valid operation'
  return
end
print 'Enter first number:'
a = gets.chomp.to_f
print 'Enter second number:'
b = gets.chomp.to_f

case op
when '+'
  puts("Result: #{sum(a, b)}")
when '-'
  puts("Result: #{sum(a, -b)}")
when '*'
  puts("Result: #{mul(a, b)}")
when '/'
  puts("Result: #{div(a, b)}")
end
