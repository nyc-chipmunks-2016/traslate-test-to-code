def has_string?(array)
	array.any? {|element| element.class==String}
end	

# a=[1,"hello", :bob]
# p has_string?(a)

def average(array)
	(array.reduce(:+)).to_f / (array.length).to_f
end

array=[1,2,3,4]
p average(array)	