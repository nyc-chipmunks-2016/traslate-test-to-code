require 'pry'

def has_string?(arr)
  arr.any? { |item| item.class == String }
end

def average(arr)
  arr.reduce(:+).to_f / arr.length
end

def super_compact(arr)
  arr.compact.flatten.reject { |string| string.empty? }
end

def tight_zip(a, b)
  a.zip(b).flatten.compact
end


def first_duplicate(arr)
  arr.detect { |letter| arr.count(letter) > 1 }
end

def symbolize(arr)
  arr.map { |item| item.to_sym }
end

def index_of_max(arr)
  arr.index(arr.max)
end

# def merge(arr)
#
# end
