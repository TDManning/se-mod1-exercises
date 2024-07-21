# 1. Using #each, add to the method below, such that it takes in an array of names, 
# and returns an array of all names upcased.

#.each
kardashians = ["kris", "kim", "kourtney", "khloe", "rob"]

def upcase_names(names)
  new_array = []
  names.each do |name|
    new_array.push(name.upcase)
 end
 return new_array
end 

p upcase_names(kardashians)
 

# .map 
kardashians = ["kris", "kim", "kourtney", "khloe", "rob"]

def upcase_names(names)
  # names.map { do |name| name.upcase } ONE OPTION OR THE ONE BELOW
  names.map do |name|
    name.upcase
  end
 end


p upcase_names(kardashians)


# should return ["KRIS", "KIM", "KOURTNEY", "KHLOE", "ROB"]



# 2. Using #each, update the method below, such that it takes in an array of names,
# and returns a collection of the names that end in 'ie'

pets = ["Brutus", "Lucky", "Goldie", "Pepper", "Odie"]

def names_ending_in_ie(names)
 pets_array = []
 names.each do |name|
  pets_array.push(name.include?("ie"))

 end
 return pets_array
end 

p names_ending_in_ie(pets)

# should return an array of ["Goldie", "Odie"]






# 3. Using #each, update the method below, such that it takes in an array of integers,
# and returns the first number that is over 100 when squared. 

nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

def first_num_thats_square_is_above_100(nums)
  nums.each do |num|
    if num * num > 100
      return num
    end

  end
  return first_num
end 

p first_num_thats_square_is_above_100(nums)

# should return the integer 11