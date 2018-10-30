require 'pry'
# your code goes here
def begins_with_r(array)
  array.all? { |element| element.chars.first == "r" }
end

def contain_a(array)
  array.select { |element| element.chars.include?("a") }
end

def first_wa(array)
  array.each do |element|
    return element if element.to_s[0..1] == "wa"
  end
end

def remove_non_strings(array)
  array.select {|element| element.is_a?(String)}
end

def count_elements(array)
  hsh = Hash.new(0)
    array.each do |element|
    hsh[element] +=1
    end
  result = []
  hsh.each do |k,v|
    result << {name: k.values.first, count: v}
  end
  result
end

def merge_data(keys, data)
  new_hsh = []
  keys.each do |hsh|
    name = hsh.values.first
    data.first[name][:first_name] = name
  end
  data.first.each do |key, values|
    new_hsh << values
  end
  new_hsh
end

def find_cool(hsh)
  cool = []
  hsh.each do |k,v|
    if k[:temperature] == "cool"
      cool << {name: k[:name], temperature: k[:temperature]}
    end
  end
  cool
end

def organize_schools(hash)
  new_hsh = Hash.new ([])
  hash.each do |school,lochsh|
    lochsh.each do |loc, city|
      new_hsh[city] += [school]
      # binding.pry
    end
  end
  new_hsh
end
