class Recipe < ApplicationRecord
	belongs_to :category
	validates :name, :ingredients, :instructions, presence: true
	before_save :titleize_names
	accepts_nested_attributes_for :category, reject_if: proc { |attributes| attributes['name'].blank? }

	def autosave_associated_records_for_category
		if new_category = Category.find_by_name(category.name.titleize)
			self.category = new_category
		else
			self.category.save
			self.category_id = self.category.id
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