class AddCookingInstructions < ActiveRecord::Migration
  def change
    add_column :recipes, :cooking_instructions, :string

  end
end
