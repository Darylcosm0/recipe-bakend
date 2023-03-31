class Recipe < ApplicationRecord
        belongs_to :user
        has_many :ingredients
        has_many :reviews
        has_many :recipe_labels
        has_many :labels, through: :recipe_labels
end
