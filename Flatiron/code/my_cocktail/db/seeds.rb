  
# (1..20).to_a.each do |num|
#   Cocktail.create(name: "Cocktail #{num}")
# end 

Cocktail.all.each do |cocktail|
  cocktail.update(user_id: [3,4,5,6].sample)
end