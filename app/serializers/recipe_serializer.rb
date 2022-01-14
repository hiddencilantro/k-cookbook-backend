class RecipeSerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :category
  attributes :name, :eng_name, :description, :image, :ingredients, :instructions, :category_id
end
