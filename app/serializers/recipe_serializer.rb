class RecipeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :ingredients, :image_url
end
