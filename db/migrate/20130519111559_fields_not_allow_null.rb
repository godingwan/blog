class FieldsNotAllowNull < ActiveRecord::Migration
  def up
    change_column :authors, :first_name, :string, :null => false
    change_column :authors, :last_name, :string, :null => false
    change_column :authors, :email, :string, :null => false
    change_column :authors, :phone_number, :integer, :null => false
  end

  def down
    change_column :authors, :first_name, :string, :null => true
    change_column :authors, :last_name, :string, :null => true
    change_column :authors, :email, :string, :null => true
    change_column :authors, :phone_number, :integer, :null => true
  end
end
