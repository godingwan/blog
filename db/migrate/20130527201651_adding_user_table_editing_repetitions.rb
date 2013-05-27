class AddingUserTableEditingRepetitions < ActiveRecord::Migration
  def up
    remove_column :authors, :email
    remove_column :authors, :user_name
    create_column :authors, :authors_id, :integer, :null => false
    remove_column :categories, :blog_title
    create_column :categories, :blog_id, :integer, :null => false
    remove_column :categories, :keyword
    remove_column :categories, :category
    create_column :cateogires, :tags, :string
    remove_column :comments, :user_name
    create_column :comments, :user_id, :integer, :null => false
    create_column :comments, :blog_id, :integer, :null => false
  end

  def down
    create_column :authors, :email, :string, :null => false
    create_column :authors, :user_name, :string, :null => false
    remove_column :authors, :authors_id
    create_column :categories, :blog_title, :string
    remove_column :categories, :blog_id
    create_column :categories, :keyword, :string
    create_column :categories, :category, :string
    remove_column :cateogires, :tags
    create_column :comments, :user_name, :string
    remove_column :comments, :user_id
    remove_column :comments, :blog_id
  end

  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password
      t.string :email
      t.integer :author_id
      t.integer :comment_id

      t.timestamps
    end
  end
end
