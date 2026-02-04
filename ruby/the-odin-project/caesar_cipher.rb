# frozen_string_literal: true

ALPHABETS = ('a'..'z').to_a

def shift_char(char, shift)
  lower = char.downcase
  index = ALPHABETS.index(lower)
  return char if index.nil?

  shifted = ALPHABETS[(index + shift) % 26]
  char =~ /[A-Z]/ ? shifted.upcase : shifted
end

def caesar_cipher(msg, shift)
  result = +''
  msg.each_char { |char| result << shift_char(char, shift) }
  puts result
end

caesar_cipher('What a string!', 5)
