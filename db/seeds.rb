# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Load ingredients seed"
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
response = RestClient.get(url)
data = JSON.parse(response.body)

10.times.each do
  i = (1..data["drinks"].size).to_a.sample
  Ingredient.create(name: data["drinks"][i]["strIngredient1"])
end
puts "Ingredients seed loaded"


puts "Load cocktail see"
COCKTAILS = %w[Martini
Manhattan
Bloody Mary
Margarita
Old Fashioned Cocktail
Mojito
Daiquiri
Gin and Tonic]

COCKTAILS.each do |cocktail|
  Cocktail.create(name: cocktail)
end

puts "Cocktails seed loaded"
