class RecipesController < ApplicationController
    def index
        recipes = Recipe.all
        render json: RecipeSerializer.new(recipes)
    end

    def show
        recipe = Recipe.find_by(id: params[:id])
        render json: RecipeSerializer.new(recipe)
    end

    def create
        recipe = Recipe.new(recipe_params)
        if recipe.save
            render json: RecipeSerializer.new(recipe)
        else
            render json: {error: "Could not save recipe"}
        end
    end

    def update
        recipe = Recipe.find_by(id: params[:id])
        if recipe.update(recipe_params)
            render json: RecipeSerializer.new(recipe)
        else
            render json: {error: "Could not update recipe to the database"}
        end
    end

    def destroy
        recipe = Recipe.find_by(id: params[:id])
        recipe.destroy
        render json: {message: "Successfully deleted #{recipe.name}"}
    end

    private

    def recipe_params
        params.require(:recipe).permit(:name, :description, :image, :category_id, ingredients: [], instructions: [])
    end
end
