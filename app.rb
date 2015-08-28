require 'bundler/setup'
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }


get '/'  do
  erb(:index)
end


#Add a new ingredient to the list of existing ingredients (view post /recipe/:id)
#recipe.ingredients.push(new_ingredient)

#Ingredient.new({:recipe_ids = [recipe.id()]})
#create new ingredient and associate with recipe at the same time 

#recipe.ingredients.destroy(ingredient)
#remove an ingredient from a recipe 


#recipe.update({:ingredient_ids =>[ingredient.id()]})
#update all of a recipe's ingredients or ingredient's recipes