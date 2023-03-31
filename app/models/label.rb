class Label < ApplicationRecord
    has_many :recipe_labels
    has_many :recipes, through: :recipe_labels
end
