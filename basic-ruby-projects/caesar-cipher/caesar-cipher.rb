def caesar_cipher_upcase_chars(char, shifting_key)
  ascii_A = "A".ord
  ascii_Z = "Z".ord

  ascii_char = char.ord

  encrypt_char_ascii = if (ascii_char + shifting_key) > ascii_Z
    (ascii_A + ((ascii_char + shifting_key) - ascii_Z - 1))
  else
    ascii_char + shifting_key
  end

  # turn the ascii number to its related character
  encrypt_char_ascii.chr
end

def caesar_cipher_lowercase_chars(char, shifting_key)
  ascii_a = "a".ord
  ascii_z = "z".ord

  ascii_char = char.ord

  encrypt_char_ascii = if (ascii_char + shifting_key) > ascii_z
    (ascii_a + ((ascii_char + shifting_key) - ascii_z - 1))
  else
    ascii_char + shifting_key
  end

  # turn the ascii number to its related character
  encrypt_char_ascii.chr
end

def caesar_cipher(str_to_be_encrypted, shifting_key)

  orig_str_chars = str_to_be_encrypted.split('')
  encrypted_chars = []

  orig_str_chars.each do |c|
    if (c >= "a") && (c <= "z")
      encrypted_chars.push(caesar_cipher_lowercase_chars(c, shifting_key))
    elsif (c >= "A") && (c <= "Z" )
      encrypted_chars.push(caesar_cipher_upcase_chars(c, shifting_key))
    else
      encrypted_chars.push(c)
    end
      
  end

  encrypted_chars.join('')
end

########################################################################

print "Enter the string that you want to encrypt: "
original_string = gets.chomp

print "Enter the shifting key: "
shifting_key = gets.chomp.to_i

encrypted_str = caesar_cipher original_string, shifting_key
puts "Your data successfully encrypted: #{encrypted_str}"

