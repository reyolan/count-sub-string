dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
str = "Howdy partner, sit down! How's it going?"

def substrings(string, dictionary)
  string = string.downcase
  string_occured = dictionary.select {|substring| string.include?(substring)}
  number_of_occurence = string_occured.map {|substring| string.scan(substring).length}
  hash_of_substring_occurence = string_occured.zip(number_of_occurence).to_h  
  puts hash_of_substring_occurence
end
  
substrings(str, dictionary)
