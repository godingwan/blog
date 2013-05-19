class CreateBlogEntries < ActiveRecord::Migration
  def change
    create_table :blog_entries do |t|
      t.string :user_name
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
