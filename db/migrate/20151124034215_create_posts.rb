class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :legend

      t.timestamps null: false
    end
  end
end
