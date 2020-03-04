class RecipeIngredientsController < ApplicationController
    #will run the current_recipeIngredient method before running any of the methods listed in the array
    before_action :current_recipeIngredient, only: [:show, :update, :destroy]

    #gets access to all recipe ingredients
    def index 
        recipeIngredients = RecipeIngredient.all
        #render will return the object back in json format so that it can be used by the frontend
        render json: recipeIngredients
    end

    #gets info on a specific recipe ingredient
    def show
        if recipeIngredient
            render json: recipeIngredient
        else 
            render json: {message: 'Recipe Ingredient not found'}
        end
    end

    #creates a new recipe ingredient
    def create
        recipeIngredient = rRcipeIngredient.create(recipeIngredient_params)
        render json: recipeIngredient
    end

    #updates a recipeIngredient
    def update
        recipeIngredient.update(recipeIngredient_params)
        render json: recipeIngredient
    end

    #removes a recipeIngredients
    def destroy
        recipeIngredient.destroy
    end

    private
    #this methods purpose is to keep our code DRY
    def current_recipeIngredient
        recipeIngredient = RecipeIngredient.find(params[:id])
    end

    #This method allows us to permit the params
    def recipeIngredient_params
        params.require(:recipeIngredient).permit(:recipe_id, :ingredient_id, :amount_of_ingredient)
    end
end
