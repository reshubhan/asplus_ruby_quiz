#{Amar Singh Kaithwar} {4 Years }
class Consecutive
  
  def initialize(string)
    @input_string  = string 
  end
  
  def max_consecutive_characters
  	arr = @input_string.split("")
    counts = []
    previous = nil
    #This loop gives all characters repeats and their count of repeats in an array.
    #like  [[a,2],[b,3],[a,1]]
    arr.each do |ch|
      if previous and previous[0] == ch
        previous[1] += 1
      else
        previous = [ch, 1]
        counts.push previous
      end
    end
    a =  counts.sort
    h2 = Hash[*a.flatten] # This converts the array into hash.
    max_value  = h2.values.max
    h2.reject!{|key, value| value != max_value} #This rejects all the  elements which do not match the max value.
    key = h2.keys.sort
  end
 
end

