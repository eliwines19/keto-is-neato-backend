class Recipe < ApplicationRecord
    serialize :ingredients, Array
    belongs_to :category
end