class CreateCommentComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comment_comments do |t|
      t.integer :user_id
      t.string :commentable_type
      t.integer :commentable_id
      t.text :body
      t.integer :parent_id, :lft, :rgt
      t.integer :depth, default: 0, null: false

      t.timestamps null: false
    end

    add_index :comment_comments, [:commentable_type, :commentable_id]
    add_index :comment_comments, :parent_id
    add_index :comment_comments, :lft
    add_index :comment_comments, :rgt
  end
end