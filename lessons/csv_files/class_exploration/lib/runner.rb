require 'CSV'

array = []

CSV.foreach('./data/animal_lovers.csv', header_converters: :s headers: true, symbol) do |row|
  puts row.inspect
end

puts array