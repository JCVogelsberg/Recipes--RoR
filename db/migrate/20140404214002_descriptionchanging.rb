class Descriptionchanging < ActiveRecord::Migration
  def change
    rename_table :rt_join, :recipes_tags
  end
end
