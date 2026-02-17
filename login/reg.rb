require 'json'
Filename = 'udata.json'.freeze
def register_user(username, password)
  user_data = if File.exist?(Filename)
                JSON.parse(File.read(Filename))
              else
                []
              end
  if user_data.any? { |user| user['username'] == username }
    puts 'User already exists. Please try another!'
    return
  end
  user_data << { 'username' => username, 'password' => password }
  File.write(Filename, JSON.pretty_generate(user_data))
  puts "User #{username} registered successfully!"
end

print 'Enter Username: '
username = gets.chomp

if username == ''
  puts 'Enter a valid username'
  return
end

print 'Enter password: '
password = gets.chomp

print 'Confirm password: '
conpass = gets.chomp
if password == conpass
  register_user(username, password)
else
  puts 'Passwords do not match. Please try again.'
end
