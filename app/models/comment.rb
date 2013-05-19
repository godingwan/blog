class Comment < ActiveRecord::Base
  attr_accessible :comment, :user_name
  validates_presence_of :user_name, :comment
end
