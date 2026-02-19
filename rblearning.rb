# String
word = 'hoNey BaDGer'
sen = 'Using the documentation, figure out how to capitalize a string. What happens if you capitalize a string that is already all-caps?'
puts word.downcase.include? 'badger'
puts sen.upcase.upcase
object = nil
puts 'true' if object.nil?
temp = word.split('')
print temp

# Reverse
x = 157
rev = 0
while x != 0
  rev = rev * 10 + (x % 10)
  x /= 10
end
puts rev

word.each_char.with_index do |char, index|
  print "#{index + 1}.#{char}, " unless char == ' '
  rev = char + rev unless char == ' '
end
puts "\n#{rev}"

# Armstrong
n = 153
arm = 0
tn = 0
while n != 0
  tn = n % 10
  arm += tn * tn * tn
  n /= 10
end
puts arm
arr = ('a'..'m').to_a
print arr.slice(10, arr.length - 1)
word << 'honey king'
puts word
# Date and time
require 'date'

puts Date.today
puts Time.now
# hash
person = {
  name: 'Rabin',
  age: 20,
  city: 'banepa'
}

person.each do |key, value|
  puts "#{key} = #{value}"
end

# pattern matching
password = 'asdfAZkarlo45!$q'
if password.length > 11 && password =~ /(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[$%\^&*!@#])/
  puts 'valid'
else
  puts 'not valid'
end

num = [184, 52, 39]
even = num.select(&:even?)
puts even

# error
begin
  puts x
rescue ZeroDivisionError => e
  puts e.message
rescue NameError => e
  puts e.message
ensure
  puts 'This works fine syt'
end

def check_age(age)
  raise 'Too young' if age < 18

  puts 'works fine'
end
begin
  # check(15)
  # check_age(5)
  int '55'
rescue RuntimeError, NoMethodError, TypeError => e
  puts e.message
end
