class Category < ApplicationRecord
    has_many :recipes
    before_save :titleize_name

    private

	def titleize_name
		self.name = name.titleize
	end
end
