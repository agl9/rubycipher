require_relative 'cipher.rb'

class Main
  loop do
    puts "Enter your message to be coded?"
    input_string=gets.chomp.to_s
    puts "How many places do you want to shift by?"
    shift=gets.chomp.to_i
    code = Cipher.new
    puts "Your code shifted by #{shift} is #{code.cipher(input_string,shift)}"
    puts "Press y if you want to code another message, any other key to exit"
    i=gets.chomp
    if i!='y'
      break
    end
  end
end