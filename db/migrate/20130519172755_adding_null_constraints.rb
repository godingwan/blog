class AddingNullConstraints < ActiveRecord::Migration
  def up
    change_column :blog_entries, :user_name, :string, :null => false
    change_column :blog_entries, :content, :text, :null => false
  end

  def down
    change_column :blog_entries, :user_name, :string, :null => true
    change_column :blog_entries, :content, :text, :null => true
  end
end
