require 'pry'
# your code goes here
def begins_with_r(array)
    
    array.all? do |word|
        word[0] == "r"
    end
    
end

def contain_a(array)

    array.select do |word|
        word.include?("a")
    end

end


def first_wa(array)
    wa_word = nil
    array.find do |word|
        wa_word = word.to_s
       
        wa_word.include?("wa")
    end

end


def remove_non_strings(array)

    array.delete_if do |i|
         i.class != String
        end
end


def count_elements(array)
    
    counts = Hash.new 0
    array.each do |word|
        counts[word] += 1
    end
        counts.collect do | name, count|
       
            name.merge({:count=>count})
    end
end




def merge_data(key,data)
        keys.each do |hash_one|
            data.each do |hash_two|
                hash_one.merge!(hash_two[hash_one[:first_name]])
            end
        end
    end
    





def find_cool(hash)
    
    hash.select do |value|
    if value.has_value?("cool")
        value
     end
    end
end

def organize_schools(array)
    school_location = {}
    array.collect  do | school, hash |
        hash.collect do | location_key, location|
            unless school_location.key? (location)
                school_location[location] = [school]
                else
                school_location[location] << school
            end
        end
 end
    school_location
end




