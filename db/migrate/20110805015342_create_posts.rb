class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.boolean :publish
      t.string :slug
      t.references :user

      t.timestamps
    end
    
    add_index :posts, :slug, :unique => true
  end

  def self.down
    drop_table :posts
  end
end
