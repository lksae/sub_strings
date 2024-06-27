dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
 
def substrings(input_string, dictionary)
    input_array = input_string.split()
    #p input_array
    output_hash = {}
    dictionary.reduce(Hash.new(0)) do |result, dict|
      input_array.each do |word|
        if word.downcase.include?(dict)
            result[dict] += 1
        end
      end
        
      output_hash = result
    end
   p output_hash
end



#substrings("below", dictionary)

substrings("Howdy partner, sit down! How's it going?", dictionary)
#=> { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

