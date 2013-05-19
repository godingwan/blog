class Author < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :phone_number
  validates_presence_of :first_name, :last_name, :email
end
