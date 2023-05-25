class RecipeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :ingredients, :image_url, :category_id
end
