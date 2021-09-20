class RecipeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :image, :ingredients, :instructions, :category_id, :category
end
