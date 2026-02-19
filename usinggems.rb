require "colorize"
require "faker"
require "httparty"

puts "hello".red
puts Faker::Name.name
puts Faker::Internet.email
puts HTTParty.get("https://api.github.com")