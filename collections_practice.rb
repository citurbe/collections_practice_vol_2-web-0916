# your code goes here
require 'pry'
# your code goes here
def begins_with_r(array)
  !(array.any? {|element| element[0] != "r"})
end

def contain_a(array)
output = []
  array.each do |element|
    output << element if element.include?("a")
  end
  return output
end

def first_wa(array)
  array.each do |element|
    return element if element.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.delete_if {|element| element.class != String}
end

def count_elements(array)
	output_array = []
	keep_track = []
	array.each do |name_hash|
		if keep_track.include?(name_hash)
			output_array.each do |output_hash|
				if output_hash[:name] == name_hash[:name]
					output_hash[:count] = output_hash[:count] + 1
				end
			end

		else
			keep_track << name_hash
			output_array << {
				name: name_hash[:name],
				count: 1
			}
		end
	end
	output_array
end

def merge_data(array_1, array_2)
	output_array = []
	array_1.each do |primary_hash|
		array_2.each do |secondary_hash|
			secondary_hash.each do |name, info|
				if name == primary_hash[:first_name]
					output_hash = {}
					output_hash[:first_name] = name
					output_hash[:awesomeness] = info[:awesomeness]
					output_hash[:height] = info[:height]
					output_hash[:last_name] = info[:last_name]
					output_array << output_hash
				end
			end
		end
	end
	output_array


end

def find_cool(cool)
	output_array = []
	cool.each do |people_hash|
		output_array << people_hash if people_hash[:temperature] == "cool"
	end
	output_array
end


def organize_schools(schools)
	output_hash = {}
	schools.each do |school_name, location_hash|
		location_name = location_hash[:location]
		#binding.pry
		if output_hash.keys.include?(location_name)
			#school_array = []
			school_array = output_hash[location_name] 
			school_array.push(school_name)
			output_hash[location_name] = school_array
		else
			output_hash[location_name] = [school_name]
		end
	end
			

	output_hash

end