class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.integer :upvotes
      t.integer :downvotes

      t.timestamps
      t.belongs_to :user, foreign_key: true, index: true
      t.belongs_to :community, foreign_key: true, index: true
    end
  end
end
