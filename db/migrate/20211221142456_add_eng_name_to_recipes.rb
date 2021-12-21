class AddEngNameToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :eng_name, :string
  end
end
