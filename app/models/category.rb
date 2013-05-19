class Category < ActiveRecord::Base
  attr_accessible :blog_title, :category, :keyword
  validates_presence_of :blog_title, :category, :keyword
end
