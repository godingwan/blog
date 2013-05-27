class ColumnEditingMigrationRetry < ActiveRecord::Migration
  def up
    remove_column :authors, :email
    remove_column :authors, :user_name
    add_column :authors, :authors_id, :integer
    remove_column :categories, :blog_title
    add_column :categories, :blog_id, :integer
    remove_column :categories, :keyword
    remove_column :categories, :category
    add_column :categories, :tags, :string
    remove_column :comments, :user_name
    add_column :comments, :user_id, :integer
    add_column :comments, :blog_id, :integer
  end

  def down
    add_column :authors, :email, :string
    add_column :authors, :user_name, :string
    remove_column :authors, :authors_id
    add_column :categories, :blog_title, :string
    remove_column :categories, :blog_id
    add_column :categories, :keyword, :string
    add_column :categories, :category, :string
    remove_column :categories, :tags
    add_column :comments, :user_name, :string
    remove_column :comments, :user_id
    remove_column :comments, :blog_id
  end
end
