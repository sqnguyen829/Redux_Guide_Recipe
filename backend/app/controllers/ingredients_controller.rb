class IngredientsController < ApplicationController
    #will run the current_ingredient method before running any of the methods listed in the array
    before_action :current_ingredient, only: [:show, :update, :destroy]

    #gets access to all ingredients
    def index 
        ingredients = Ingredient.all
        #render will return the object back in json format so that it can be used by the frontend
        render json: ingredients
    end

    #gets info on a specific ingredient
    def show
        if ingredient
            render json: ingredient
        else 
            render json: {message: 'Ingredient not found'}
        end
    end

    #creates a new ingredient
    def create
        ingredient = Ingredient.create(ingredient_params)
        render json: ingredient
    end

    #updates a ingredient's name
    def update
        ingredient.update(ingredient_params)
        render json: ingredient
    end

    #removes a ingredient
    def destroy
        ingredient.destroy
    end

    private
    #this methods purpose is to keep our code DRY
    def current_ingredient
        ingredient = Ingredient.find(params[:id])
    end

    #This method allows us to permit the params
    def ingredient_params
        params.require(:ingredient).permit(:name)
    end

end
