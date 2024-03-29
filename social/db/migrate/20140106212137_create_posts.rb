class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :user, index: true
      t.string :title
      t.text :body
      t.integer :likes_count, default: 0
      t.timestamps
    end
  end
end
