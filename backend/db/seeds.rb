Recipe.destroy_all
Ingredient.destroy_all
RecipeIngredient.destroy_all

r1 = Recipe.create(name: 'Chicken soup')
r2 = Recipe.create(name: 'Steak')
r3 = Recipe.create(name: 'Salad')

i1 = Ingredient.create(name: 'chicken')
i2 = Ingredient.create(name: 'carrot')
i3 = Ingredient.create(name: 'water')
i4 = Ingredient.create(name: 'onion')
i5 = Ingredient.create(name: 'celery')
i6 = Ingredient.create(name: 'ribeye')
i7 = Ingredient.create(name: 'butter')
i8 = Ingredient.create(name: 'tomatoe')
i9 = Ingredient.create(name: 'lettuce')

ri1 = RecipeIngredient.create(recipe_id:r1.id, ingredient_id: i1.id, amount_of_ingredient: '1 pound')
ri2 = RecipeIngredient.create(recipe_id:r1.id, ingredient_id: i2.id, amount_of_ingredient: '1 cup')
ri3 = RecipeIngredient.create(recipe_id:r1.id, ingredient_id: i3.id, amount_of_ingredient: '1 gallon')
ri4 = RecipeIngredient.create(recipe_id:r1.id, ingredient_id: i4.id, amount_of_ingredient: '1 cup')
ri5 = RecipeIngredient.create(recipe_id:r1.id, ingredient_id: i5.id, amount_of_ingredient: '1 cup')

ri6 = RecipeIngredient.create(recipe_id:r2.id, ingredient_id: i6.id, amount_of_ingredient: '2 pound')
ri7 = RecipeIngredient.create(recipe_id:r2.id, ingredient_id: i7.id, amount_of_ingredient: '2 tablespoon')

ri8 = RecipeIngredient.create(recipe_id:r3.id, ingredient_id: i2.id, amount_of_ingredient: '1/2 cup')
ri9 = RecipeIngredient.create(recipe_id:r3.id, ingredient_id: i4.id, amount_of_ingredient: '1/2 cup')
ri10 = RecipeIngredient.create(recipe_id:r3.id, ingredient_id: i8.id, amount_of_ingredient: '1/2 cup')
ri11 = RecipeIngredient.create(recipe_id:r3.id, ingredient_id: i9.id, amount_of_ingredient: '2 cup')