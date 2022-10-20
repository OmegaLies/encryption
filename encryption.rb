require 'digest'

puts "Введите слово или фразу для шифрования:"
user_word = STDIN.gets.chomp
puts

puts "Каким способом зашифровать:"
puts "1. MD5"
puts "2. SHA1"

user_choice = STDIN.gets.to_i
result =
  if user_choice == 1
    Digest::MD5.hexdigest(user_word)
  elsif user_choice == 2
    Digest::SHA1.hexdigest(user_word)
  else
    "Такого способа нет"
  end

puts "Вот что получилось:"
puts "#{result}"