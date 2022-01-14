class CategorySerializer
  include FastJsonapi::ObjectSerializer
  has_many :recipes
  attributes :name
end
