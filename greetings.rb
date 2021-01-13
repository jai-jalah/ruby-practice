puts "Hello! Please remind me what your name is.. "
user_name = gets.chomp

if user_name.upcase[0] == "S"
  puts "#{user_name.upcase}!"
else
  puts "Hi #{user_name}"
end
