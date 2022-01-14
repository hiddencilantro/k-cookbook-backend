class Recipe < ApplicationRecord
	belongs_to :category
	validates :name, :ingredients, :instructions, presence: true
	before_save :titleize_names

	def category_name=(name)
		if !name.blank?
			self.category = Category.find_or_create_by(name: name.capitalize)
		end
	end

	private

	def titleize_names
		self.name = name.titleize
		if !eng_name.blank?
			self.eng_name = eng_name.titleize
		end
	end
end