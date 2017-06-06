# your code goes here
def begins_with_r(array)

  array.all? { |e| e.downcase.start_with?("r") }

end

def contain_a(array)

  array.select {|e| e.downcase.include?("a") }

end

def first_wa(array)

  array.find do |e|
    e.to_s.downcase.start_with?("wa")
  end
end

def remove_non_strings(array)

  array.reject { |e| !(e.is_a?(String))  }

end

def count_elements(array)

  uniq_pairs = []
  final_array = []

  uniq_pairs = array.uniq

  uniq_pairs.map do |uniq_e|
    # puts uniq_e
    uniq_e[:count] = array.count(uniq_e)
    final_array << uniq_e
  end
  final_array
end

def merge_data(keys, data)
 #shared index
 #for each index combine the corresponding key and data to the merged_data hashes

 index = 0
  merged_data = []

  while index < keys.count
    name = keys[index][:first_name]
      merged_data << keys[index].merge(data[0][name])

    index += 1
  end
  merged_data

end

def find_cool(array)
  array.select { |e| e.has_value?("cool") }
end

def organize_schools(hash)

  index = 0
  location_dicts = hash.values.uniq
  locations = location_dicts.map { |e| e[:location]  }
  num_of_locations = hash.values.uniq.count

  final_hash = {}

  while index < num_of_locations
    filtered_hash =  hash.select do |key, value|
                       value.eql?(location_dicts[index])
                     end
    final_hash[locations[index]] = filtered_hash.keys
    index += 1
  end
  final_hash
end
  #
