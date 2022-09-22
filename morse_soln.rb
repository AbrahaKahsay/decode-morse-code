$morce_hash = {
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
  letter = $morce_hash[letter]
  letter
end

# Create a method to decode an entire word in Morse code

def decode_word (word)
  split_chars = word.split
  empty_word = ""
  split_chars.each do |char|
    new_letter = decode_letter(char)
    empty_word += new_letter
  end
    return empty_word
end
decode_word("-- -.--")

# Create a method to decode the entire message in Morse code

def decode_message(morse)
  split_words = morse.split(" ")
  message = []
  split_words.each do |word|
    new_word = decode_word(word)
    joined_message = message.push(new_word).join(" ")
  end
    return joined_message
end

decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')

