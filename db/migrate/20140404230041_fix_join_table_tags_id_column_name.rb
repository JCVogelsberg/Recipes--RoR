class FixJoinTableTagsIdColumnName < ActiveRecord::Migration
  def change
    rename_column :recipes_tags, :tags_id, :tag_id
    rename_column :recipes_tags, :recipes_id, :recipe_id

  end
end
