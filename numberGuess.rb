# frozen_string_literal: true

num = rand(100)
guess = nil

while num != guess
  print('Enter a number(1 to 100):')
  guess = gets.chomp.to_i
  if guess > 100 || guess < 1
    puts 'Please input a valid guess'
  elsif guess < num
    puts 'guess higher'
  elsif guess > num
    puts 'guess lower'
  else
    puts 'Your guess is correct'
  end
end
