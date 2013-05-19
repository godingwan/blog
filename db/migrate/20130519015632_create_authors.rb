class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone_number

      t.timestamps
    end
  end
end
