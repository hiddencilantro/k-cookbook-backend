class RecipesController < ApplicationController
    before_action :set_recipe, only: [:show, :update, :destroy]

    def index
        recipes = Recipe.all
        # What determines the order of returned instances within the collection?
        render json: RecipeSerializer.new(recipes)
    end

    def show
        render json: RecipeSerializer.new(@recipe)
    end

    def create
        recipe = Recipe.new(recipe_params)
        if recipe.save
            render json: RecipeSerializer.new(recipe)
        else
            errors = recipe.errors.full_messages.map do |msg|
                " #{msg}"
            end
            render json: {error: errors}
        end
    end

    def update
        if @recipe.update(recipe_params)
            render json: RecipeSerializer.new(@recipe)
        else
            errors = @recipe.errors.full_messages.map do |msg|
                " #{msg}"
            end
            render json: {error: errors}
        end
    end

    def destroy
        @recipe.destroy
    end

    private

    def set_recipe
        @recipe = Recipe.find_by(id: params[:id])
    end

    def recipe_params
        params.require(:recipe).permit(:name, :description, :image, :category_id, ingredients: [], instructions: [])
    end
end
