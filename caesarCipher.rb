# frozen_string_literal: true

def caesar_cipher(texts, n)
  res = ''
  arr = texts.bytes
  (0...(arr.length)).each do |i|
    res += if arr[i] >= 65 && arr[i] <= 90
             ((arr[i] - 65 + n) % 26 + 65).chr
           elsif arr[i] >= 97 && arr[i] <= 122
             ((arr[i] - 97 + n) % 26 + 97).chr
           else
             arr[i].chr
           end
  end
  puts "Encrypted text: #{res}"
end

print 'Enter a text to encrypt: '
texts = gets.chomp
print 'enter a key: '
n = gets.chomp.to_i
caesar_cipher(texts, n)
