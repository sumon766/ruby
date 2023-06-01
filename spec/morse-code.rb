MORSE = { 'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.', 'F' => '..-.',
          'G' => '--.', 'H' => '....', 'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..', 'M' => '--',
          'N' => '-.', 'O' => '---', 'P' => '.--.', 'Q' => '--.-', 'R' => '.-.', 'S' => '...', 'T' => '-',
          'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-', 'Y' => '-.--', 'Z' => '--..' }.freeze

# returns from symbol to chararacter
def decode_char(symbol)
  MORSE.each do |key, value|
    return key if value === symbol
  end
end

# returns a word from morse characters
def decode_word(word)
  word_chars = word.split
  word_Array = []
  word_chars.each do |symbol|
    word_Array.push(decode_char(symbol))
  end
  word_Array.join
end

# returns a sentence with words seperated by three spaces
def decode(sentence)
  sentence_char = sentence.split('  ')
  sentence_array = []
  sentence_char.each do |word|
    sentence_array.push(decode_word(word))
  end
  sentence_array.join('   ')
end
