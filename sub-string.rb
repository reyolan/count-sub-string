dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
str = "Howdy partner, sit down! How's it going?"

def substrings(string, dictionary)
  string_occured = dictionary.select {|substring| string.downcase.match?(substring)}
  number_of_occurence = string_occured.reduce(Hash.new(0)) do |total, substring|
    total[substring] += 1
    total
  end
  puts number_of_occurence
end
  
substrings(str, dictionary)
