class Cipher
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
end
