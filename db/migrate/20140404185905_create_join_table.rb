class CreateJoinTable < ActiveRecord::Migration
  def change
    create_table :rt_join do |t|
      t.column :recipes_id, :int
      t.column :tags_id, :int

      t.timestamps
    end
  end
end





