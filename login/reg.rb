require 'json'
Filename = 'udata.json'
def register_user(username, password)
  user_data = if File.exist?(Filename)
              JSON.parse(File.read(Filename))
            else
              []
            end
user_data << {'username'=>username,'password'=>password}
File.write(Filename,JSON.pretty_generate(user_data))

end

print "Enter Username: "
username = gets.chomp

print "Enter password: "
password = gets.chomp

print "Confirm password: "
conpass = gets.chomp

if password == conpass
  register_user(username, password)
end