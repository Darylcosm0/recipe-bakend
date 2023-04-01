class Recipe < ApplicationRecord
        belongs_to :user
        has_many :ingredients,dependent: :destroy
        has_many :reviews,dependent: :destroy
        has_many :recipe_labels,dependent: :destroy
        has_many :labels, through: :recipe_labels
end
