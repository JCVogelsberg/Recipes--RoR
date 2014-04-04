class Delete < ActiveRecord::Migration
  def change
    remove_column :recipes, :ingredients
    remove_column :recipes, :cooking_instructions
  end
end
