def morse_code_char(morse_code)
    morse_code_table = {
      '.-'    => 'A',
      '-...'  => 'B',
      '-.-.'  => 'C',
      '-..'   => 'D',
      '.'     => 'E',
      '..-.'  => 'F',
      '--.'   => 'G',
      '....'  => 'H',
      '..'    => 'I',
      '.---'  => 'J',
      '-.-'   => 'K',
      '.-..'  => 'L',
      '--'    => 'M',
      '-.'    => 'N',
      '---'   => 'O',
      '.--.'  => 'P',
      '--.-'  => 'Q',
      '.-.'   => 'R',
      '...'   => 'S',
      '-'     => 'T',
      '..-'   => 'U',
      '...-'  => 'V',
      '.--'   => 'W',
      '-..-'  => 'X',
      '-.--'  => 'Y',
      '--..'  => 'Z'
    }
  
    morse_code_table[morse_code] || ''
end
  
def morse_code_word(morse_word) 
    morse_chars = morse_word.split
  
    decoded_word = morse_chars.map { |morse_char| morse_code_char(morse_char) } 
  
    decoded_word.join
end

def decode_word(symbol_word)
    symbol_array = symbol_word.split
    word_array = []
    symbol_array.each do |symbol|
      word_array.push(morse_code_char(symbol))
    end
    word_array.join
end

def morse_code_message(morse_message)
    morse_words = morse_message.split('   ')
  
    decoded_message = morse_words.map { |morse_word| morse_code_word(morse_word) }
  
    decoded_message = decoded_message.join(' ') # Assign the joined string back to decoded_message variable
  
    puts "Decoded message: #{decoded_message}"
end


MORSE_SYMBOLS = { 'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.', 'F' => '..-.', 'G' => '--.',
                  'H' => '....', 'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..', 'M' => '--', 'N' =>
                   '-.', 'O' => '---', 'P' => '.--.', 'Q' => '--.-',
                  'R' => '.-.', 'S' => '...', 'T' => '-', 'U' => '..-',
                  'V' => '...-', 'W' => '.--', 'X' => '-..-', 'Y' => '-.--', 'Z' => '--..' }.freeze

def decode_char(symbol)
  MORSE_SYMBOLS.each do |key, value|
    return key if value == symbol
  end
end

# puts decode_char("-...")
# puts decode_char("..-.")

def decode_word(symbol_word)
  symbol_array = symbol_word.split
  word_array = []
  symbol_array.each do |symbol|
    word_array.push(decode_char(symbol))
  end
  word_array.join
end