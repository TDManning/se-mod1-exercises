#Practicing .each, .map, .find, .find_all

# Use .each to complete the method

numbers = [1, 2, 3, 4]

def double_numbers(nums)
  doubled = []
  nums.each do |num|
    doubled << num * 2
  end
  doubled
end

p double_numbers(numbers)
# should return [2, 4, 6, 8]

def find_first_even(nums)
  even = []
  nums.each do |num|
    if num.even?  #If you do .find here it would work better.
      return num  
    end
  end
end

p find_first_even(numbers)
# should return: 2

def find_all_evens(nums)
  evens = []
  nums.each do |num|
    if num.even?     #evens << numver if number.even?
       evens << num
    end
  end
  evens
end

p find_all_evens(numbers)
# should return [2, 4]


# Rework each of these examples using the 
# appropriate enumberable.

numbers = [1, 2, 3, 4]

def double_numbers(nums)
  nums.map do |nums|
    num * 2
  end
end

p double_numbers(numbers)
# should return [2, 4, 6, 8]

def find_first_even(nums)
  nums.map do |nums|
    num * 2
end

p find_first_even(numbers)
# should return: 2

def find_all_evens(nums)
  nums.find_all do |nums|
    num.even
  end
end

p find_all_evens(numbers)
# should return [2, 4]


#Answer these questions with your group

#1. What's the difference between using .each and .map? 

#2. For each of the 4 above enumerables, explain how it's working.