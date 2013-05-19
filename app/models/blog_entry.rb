class BlogEntry < ActiveRecord::Base
  attr_accessible :content, :title, :user_name
end
