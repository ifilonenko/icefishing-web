class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :username
      t.integer :song_id

      t.timestamps null: false
    end
  end
end
