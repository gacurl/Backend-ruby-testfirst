#write your code here
def echo(echoed)
  echoed
end

def shout(shouted)
  shouted.upcase
end

def repeat(word, num_of_times=2)
  #make it an array (via .map) since I kept getting the trailing space
  #internet helped with this one
  num_of_times.times.map { word + '' }.join(' ')
end

def start_of_word(word, pos)
  word.slice(pos - pos, pos)
end

def first_word(phrase)
  phrase.split.first
end

def titleize(words)
  if words.length > 3
    words.split.map(&:capitalize).join(' ')
  end
end