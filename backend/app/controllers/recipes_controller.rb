class RecipesController < ApplicationController
    #will run the current_recipe method before running any of the methods listed in the array
    before_action :current_recipe, only: [:show, :update, :destroy]

    #gets access to all recipes
    def index 
        recipes = Recipe.all
        #render will return the object back in json format so that it can be used by the frontend
        render json: recipes
    end

    #gets info on a specific recipe
    def show
        if recipe
            render json: recipe
        else 
            render json: {message: 'Recipe not found'}
        end
    end

    #creates a new recipe
    def create
        recipe = Recipe.create(recipe_params)
        render json: recipe
    end

    #updates a recipe's name
    def update
        recipe.update(recipe_params)
        render json: recipe
    end

    #removes a recipe
    def destroy
        recipe.destroy
    end

    private
    #this methods purpose is to keep our code DRY
    def current_recipe
        recipe = Recipe.find(params[:id])
    end

    #This method allows us to permit the params
    def recipe_params
        params.require(:recipe).permit(:name)
    end
end
