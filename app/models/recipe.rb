class Recipe < ApplicationRecord
	belongs_to :category
	validates :name, :ingredients, :instructions, presence: true
end