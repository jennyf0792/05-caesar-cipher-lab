$lowercase = [*?a..?z] #creates an arrary of lowercase letters
$uppercase = [*?A..?Z] #creates an array of uppercase letters

# puts "What do you want the offset to be?"
# offset = gets.chomp.to_i #turns the string with the number into an integer
# puts "Type a string"
# string = gets.chomp

def decode(string, neg_offset)
  string.split("").collect do |characters|
      if $lowercase.include?(characters)
         index_value = $lowercase.index(characters) - neg_offset
         new_string = $lowercase[index_value % 26]
      elsif $uppercase.include?(characters)
         index_value = $uppercase.index(characters) - neg_offset
         new_string = $uppercase[index_value % 26]
      else
        characters
      end
    end.join("")
end

def caeser_cipher(string, offset)
    string.split("").collect do |characters|
      if $lowercase.include?(characters)
         index_value = $lowercase.index(characters) + offset
         new_string = $lowercase[index_value % 26]
      elsif $uppercase.include?(characters)
         index_value = $uppercase.index(characters) + offset
         new_string = $uppercase[index_value % 26]
      else
        characters
      end
    end.join("")
end

# caeser_cipher("string", 2)
decode("Jenny", 2)