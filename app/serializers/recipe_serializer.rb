class RecipeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :eng_name, :description, :image, :ingredients, :instructions, :category_id
end
