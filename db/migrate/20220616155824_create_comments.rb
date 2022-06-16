class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :upvotes
      t.integer :downvotes

      t.timestamps
      t.belongs_to :post, index:true, foreign_key: true
      t.belongs_to :user, index:true, foreign_key: true
    end
  end
end
