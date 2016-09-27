class User < ActiveRecord::Base
  
  validates :name, :email, :hashed_password, presence: true
end
