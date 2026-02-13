# frozen_string_literal: true

def substrings(str, dictionary)
  output = {}
  dictionary.each do |word|
    count = get_word_count(str, word)
    output[word] = count unless count.zero?
  end
  puts output
end

# rubocop: disable Metrics/MethodLength
def get_word_count(str, word)
  count = i = 0

  str.each_char do |char|
    if word[i].downcase == char.downcase
      i += 1

      if i == word.length
        count += 1
        i = 0
      end
    else
      i = word[0].downcase == char.downcase ? 1 : 0
    end
  end

  count
end
# rubocop: enable Metrics/MethodLength

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
substrings("Howdy partner, sit down! How's it going?", dictionary)
