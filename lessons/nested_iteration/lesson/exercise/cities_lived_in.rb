cities_lived_in = {
    michaela: ["Philadelphia", "Fort Collins", "Seattle"],
    mike: ["Denver", "Santa Fe", "Philadelphia", "Portland"],
    pamela: ["Lansing"],
    alex: ["Seattle", "Columbus", "Philadelphia", "Austin"]
}


# # Problem #1: 
# # Get a unique list of all of the cities that these humans have lived in  
# # ["Philadelphia", "Fort Collins", "Seattle", "Denver", "Santa Fe", "Portland", "Lansing", "Columbus", "Austin"]

unique_cities = []

cities_lived_in.each do |person, cities|
    cities.each do |city|
    unique_cities << city if !unique_cities.include?(city)
    end

end
p unique_cities


# # Problem #2: 
# # Write code that iterates through the `cities_lived_in` hash, and returns a list of  
# # names of the humans who've lived in Philadelphia.

# # [:michaela, :mike, :alex]
# # or
# # ["Michaela", "Mike", "Alex"]

unique_persons = []

cities_lived_in.each do |person, cities|
    cities.each do |city|
    unique_persons << person if city == "Philadelphia"
    end
end
p unique_persons


# Problem #3: 
# Create a hash that has the city as a key, and the number of people that live in it as it's value: 
people_in_city = Hash.new(0)

cities_lived_in.each do |person, cities|
    cities.each do |city|
        people_in_city[city] += 1 
    end
end

puts people_in_city
# {
#     "Philadelphia" => 3,
#     "Fort Collins" => 1,
#     "Seattle" =>2,
#     "Denver" => 1,
#     "Santa Fe" => 1,
#     "Portland" => 1,
#     "Lansing" => 1,
#     "Columbus => 1,
#     "Austin" => 1
# }
