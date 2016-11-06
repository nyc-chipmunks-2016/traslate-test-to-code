def has_string?(array)
  array.any? {|element| element.is_a? String  }
end

def average(array)
  array.reduce(:+).to_f / array.length
end

def super_compact(array)
  array.compact!.reject {|element| element.empty?}
end

def tight_zip(a, b)
  a.zip(b).flatten!.compact!
end

def first_duplicate(array)
  array.find {|elm| array.count(elm) == 2}
end

def symbolize(array)
  array.map! {|elm| elm.to_sym}
end

def index_of_max(array)
  max = array.max
  array.index(max)
end

def merge(array)
  array.reduce({}) {|hash, pairs| pairs.each {|key, value| (hash[key] ||= []) << value}; hash}
end
