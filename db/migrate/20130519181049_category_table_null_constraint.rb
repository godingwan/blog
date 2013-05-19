class CategoryTableNullConstraint < ActiveRecord::Migration
  def up
    change_column :categories, :blog_title, :string, :null => false
    change_column :categories, :category, :string, :null => false
    change_column :categories, :keyword, :string, :null => false
  end

  def down
    change_column :categories, :blog_title, :string, :null => true
    change_column :categories, :category, :string, :null => true
    change_column :categories, :keyword, :string, :null => true
  end
end
