def has_string?(array)
	array.any? {|element| element.class==String}
end	

# a=[1,"hello", :bob]
# p has_string?(a)

def average(array)
	(array.reduce(:+)).to_f / (array.length).to_f
end

# array=[1,2,3,4]
# p average(array)	


# def super_compact(array)
# 	 array.reject {|element| element.empty?}
# end	

# array = [:bob, "", nil, [], "joe"]
# p super_compact(array)

#come back to this
def tight_zip(array1,array2)

end	

#if i wanted to find all i would just change to array.find_all
def first_duplicate(array)
	array.find {|element| array.count(element) > 1}
end	

def symbolize(array)
	array.map {|element| element.to_sym}
end	