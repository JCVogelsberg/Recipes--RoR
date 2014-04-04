class Descriptionadding < ActiveRecord::Migration
  def change
    rename_column :recipes, :descrip, :how_to_make
  end
end
