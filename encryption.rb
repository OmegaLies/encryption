# encoding: UTF-8

require 'digest'

puts "Введите слово или фразу для шифрования:"
user_word = STDIN.gets.chomp
puts

puts "Каким способом зашифровать:"
puts "1. MD5"
puts "2. SHA1"
puts "3. SHA2"

user_choice = STDIN.gets.to_i
result =
  case user_choice 
  when 1 then Digest::MD5.hexdigest(user_word)
  when 2 then Digest::SHA1.hexdigest(user_word)
  when 3 then Digest::SHA2.hexdigest(user_word)
  else
    "Такого способа нет"
  end

puts "Вот что получилось:"
puts "#{result}"

