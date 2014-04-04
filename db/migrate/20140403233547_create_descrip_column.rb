class CreateDescripColumn < ActiveRecord::Migration
  def change
    add_column :recipes, :descrip, :string

  end
end
