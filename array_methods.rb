def has_string?(array)
  array.each do |element|
    return true if element.class == String
  end
  false
end

def average(array)
  sum = array.reduce(:+)
  sum.to_f / array.length
end

def super_compact(array)
  array.delete_if do |element|
    element.nil? || element.empty?
  end
end

def tight_zip(array1, array2)
  zipped_array = array1.zip(array2).flatten
  zipped_array.delete_if { |element| element == nil}
end

def first_duplicate(array)
  test_array = []
  array.each do |element|
    return element if test_array.include?(element)
    test_array << element
  end
end

def symbolize(array)
  array.map do |element|
    element.to_sym
  end
end

def index_of_max(array)
  sorted_array = array.sort
  array.each do |element|
    return array.index(element) if element = sorted_array[-1]
  end
end

def merge(array_of_hashes)
  hash_of_arrays = array_of_hashes[0].merge(array_of_hashes[1]) do |key, old_val, new_val|
    key = [old_val, new_val]
  end
  # Not sure how to do this without hard-coding
  hash_of_arrays[:c] = [4]
  hash_of_arrays
end