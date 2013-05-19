class BlogEntry < ActiveRecord::Base
  attr_accessible :content, :title, :user_name
  validates_presence_of :content
end
