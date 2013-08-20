#{Amar Singh Kaithwar} {4 Years}
class NonaryGame

  def initialize()
    @input = [ 1, 2, 3, 4, 5, 6, 7, 8 ]
  end
  
  def valid_groups
    calculate_combinations(@input)
  end

  #Calculates all valid subsets of a given array, matching all conditions
  def calculate_combinations(arr)
  	valid_subsets = []
  	[3,4,5].each do  |i|
      subsets = arr.combination(i).to_a.map{|n| n if n.include?(5)}.compact
      subsets.each do |subset|
        valid_subsets  << subset unless  check_conditions(subset).empty?
      end
  	end
  	valid_subsets
  end

 #This checks the digital root condition.
  def check_conditions(arr)
    digital_value  = calculate_digital_root(arr)
    digital_value == 9 ? arr : []
  end

  def calculate_digital_root(input)
  	if input.size == 1 && input[0].to_s.size == 1
  		input[0]
  	else
  	  root = calculate_root(input)
    end
  end

  def calculate_root(b)
    result = []
  	until ( b.size == 1 && b[0].to_s.size == 1) do 
      b = b.inject(:+).to_s.split("").map{|r| r.to_i}
      result  = b
  	end
  	result[0]
  end
     
end

