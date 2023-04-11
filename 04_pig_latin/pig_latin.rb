#write your code here
def translate(word)
	translation = []
	word.split(' ').map do |word|
		translation << translate_word(word)
	end
	translation.join(' ')
end

def translate_word(string)
	word = string.split('')
	trans = []
	x = word.dup

	if word[0..2].join == 'squ'
		trans << word[0..2]
		x.shift(3)
	elsif word[0] == 'q'
		trans << word[0..1]
		x.shift(2)
	else
		word.map do |letter|
			break if %w(a e i o u).include?(letter)
				trans << letter
				x.shift
		end
	end
	x.join + trans.join + "ay"
end

puts translate("apple")