class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :blog_title
      t.string :category
      t.string :keyword

      t.timestamps
    end
  end
end
