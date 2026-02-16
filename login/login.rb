require 'json'

Filename = 'udata.json'.freeze
user_data = if File.exist?(Filename)
              JSON.parse(File.read(Filename))
            else
              []
            end

print "Username: "
username = gets.chomp

print "Password: "
password = gets.chomp

if user_data.any? { |user| user['username']==username && user['password']==password }
  puts "Login successful!"
else
  puts "Invalid username or password."
end