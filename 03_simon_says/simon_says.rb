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