# your code goes here
require "pry"

def begins_with_r(array)
  array.all? do |element|
    element[0]  == "r"
  end
end

def contain_a(array)
  array.select do |element|
    element.include?("a")
  end
end

def first_wa(array)
  array.find do |element|
    element.slice(0, 2).include?("wa")
  end
end

def remove_non_strings(array)
  array.select do |element|
    element.class == String
  end
end

def count_elements(array)
  hash = Hash.new(0)
  arr = []
  array.each do |element|
    hash[element] += 1
  end
  hash.each do |key, value|
  key[:count] = value
  arr << key
  end
  arr
end

keys =  [
          {
            :first_name => "blake"
          },

          {
            :first_name => "ashley"
          }
        ]
       


data = [
         {
           "blake" => {
                        :awesomeness => 10,
                        :height => "74",
                        :last_name => "johnson"
                      }
         },

         {
            "ashley" => {
                          :awesomeness => 9,
                          :height => 60,
                          :last_name => "dubs"
                        }
         }
  
       ]

def merge_data(keys, data)
  arr = []
  new_hash = {}
  keys.each_with_index do |element, i|
    first_name_object = element
    data[i].each do |key, value|
      merged = first_name_object.merge(value)
      arr << merged
    end
  end
  arr
end

puts merge_data(keys, data)

def find_cool(cool)
  arr = []
      cool.each do |element|
        temperature = element
        element.each do |key, value|
          if value == "cool"
          arr << temperature
          end
        end
      end
    arr
end

def organize_schools(schools)
  nyc = []
  sf = []
  chi = []
  new_hash = {}
  schools.each do |key, value|
    if value[:location] == "NYC"
      nyc << key
      new_hash[value[:location]] = nyc
    elsif value[:location] == "SF"
      sf << key
      new_hash[value[:location]] = sf
    elsif value[:location] == "Chicago"
      chi << key
      new_hash[value[:location]] = chi
    end
  end
  new_hash
end

