class RecipesController < ApplicationController
    before_action :set_recipe, except: [:create]

    def create
        recipe = Recipe.new(recipe_params)
        if recipe.save
            render json: RecipeSerializer.new(recipe, include: [:category])
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
        params.require(:recipe).permit(:name, :eng_name, :description, :image, :category_id, category_attributes: [:name], ingredients: [], instructions: [])
    end
end
