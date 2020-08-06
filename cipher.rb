def cipher(input_string,shift)
  input_string.split("").map { |a| convert(a.ord,shift)}.map{|a| a.chr}.join
end

def convert(char,shift)
  if (char>=65&&char<=90)
    return (((((char+shift-65)% 26)+26)% 26)+65)
  elsif (char>=97&&char<=122)
    return (((((char+shift-97)% 26)+26)% 26)+97)
  else 
    return char
  end
end

loop do
  puts "Enter your message to be coded?"
  input_string=gets.chomp.to_s
  puts "How many places do you want to shift by?"
  shift=gets.chomp.to_i 
  puts "Your code shifted by #{shift} is #{cipher(input_string,shift)}"
  puts "Press y if you want to code another message, any other key to exit"
  i=gets.chomp
  if i!='y'
    break
  end
end