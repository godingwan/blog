class NullConstraintOnComments < ActiveRecord::Migration
  def up
    change_column :comments, :user_name, :string, :null => false
    change_column :comments, :comment, :text, :null => false
  end

  def down
    change_column :comments, :user_name, :string, :null => true
    change_column :comments, :comment, :text, :null => true
  end
end
