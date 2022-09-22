@morce_hash = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z',
  '.----' => 1,
  '..---' => 2,
  '...--' => 3,
  '....-' => 4,
  '.....' => 5,
  '-....' => 6,
  '--...' => 7,
  '---..' => 8,
  '----.' => 9,
  '-----' => 0
}

# Create a method to decode a Morse code character

def decode_letter(letter)
  @morce_hash[letter]
end

# Create a method to decode an entire word in Morse code

def decode_word(word)
  split_chars = word.split
  word_collection = ''
  split_chars.each do |char|
    new_letter = decode_letter(char)
    word_collection += new_letter
  end
  word_collection
end
decode_word('-- -.--')

# Create a method to decode the entire message in Morse code

def decode_message(morse)
  split_words = morse.split('   ')
  message = []
  split_words.each do |word|
    new_word = decode_word(word)
    new_message_array = message.push(new_word)
    @joined_message = new_message_array.join(' ')
  end
  @joined_message
end

decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
