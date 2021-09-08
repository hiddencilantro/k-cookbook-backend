class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.string :image
      t.text :ingredients, array: true
      t.text :instructions, array: true
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
