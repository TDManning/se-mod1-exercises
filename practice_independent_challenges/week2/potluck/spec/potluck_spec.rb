require './lib/dish'
require './lib/potluck'

RSpec.configure do |config|
  config.formatter = :documentation
  end

RSpec.describe Potluck do
  it 'exists' do
    potluck = Potluck.new("7-13-18")

    expect(potluck).to be_instance_of(Potluck)
  end

  it 'has a date' do
    potluck = Potluck.new("7-13-18")

    expect(potluck.date).to eq("7-13-18")
  end

  it 'has an empty array' do
    potluck = Potluck.new("7-13-18")

    expect(potluck.dishes).to eq([])
  end

  it 'can add dishes' do
    potluck = Potluck.new("7-13-18")

    expect(potluck.dishes).to eq([])
    expect(potluck.dishes.length).to eq(0)  

    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entree)
    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)

    expect(potluck.dishes).to eq([couscous_salad, cocktail_meatballs])
    expect(potluck.dishes.length).to eq(2)  
  end

  it 'can add more dishes' do
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    summer_pizza = Dish.new("Summer Pizza", :appetizer)
    roast_pork = Dish.new("Roast Pork", :entree)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entree)
    candy_salad = Dish.new("Candy Salad", :dessert)

    potluck.add_dish(couscous_salad)
    expect(potluck.dishes).to eq([couscous_salad])

    potluck.add_dish(summer_pizza)
    expect(potluck.dishes).to eq([couscous_salad, summer_pizza])

    potluck.add_dish(roast_pork)
    expect(potluck.dishes).to eq([couscous_salad, summer_pizza, roast_pork])

    potluck.add_dish(cocktail_meatballs)
    expect(potluck.dishes).to eq([couscous_salad, summer_pizza, roast_pork, cocktail_meatballs])
    
    potluck.add_dish(candy_salad)
    expect(potluck.dishes).to eq([couscous_salad, summer_pizza, roast_pork, cocktail_meatballs, candy_salad])
  end

  it 'can show a certain category'

  potluck = Potluck.new("7-13-18")
  couscous_salad = Dish.new("Couscous Salad", :appetizer)
  summer_pizza = Dish.new("Summer Pizza", :appetizer)
  roast_pork = Dish.new("Roast Pork", :entree)
  cocktail_meatballs = Dish.new("Cocktail Meatballs", :entree)
  candy_salad = Dish.new("Candy Salad", :dessert)

  potluck.add_dish(couscous_salad)
  potluck.add_dish(summer_pizza)
  potluck.add_dish(roast_pork)
  potluck.add_dish(cocktail_meatballs)
  potluck.add_dish(candy_salad)

#  potluck.get_all_from_category(:appetizer)
#  potluck.get_all_from_category(:appetizer).first
#  expect(potluck.get_all_from_category(:appetizer)).first.name .to eq "Couscous Salad"
end

# Psuedocode for Iteration 
# Create tests to show that more dishes can be pushed into the dishes array.
# Create a get_all_from_category 
