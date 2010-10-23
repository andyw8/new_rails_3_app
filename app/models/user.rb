class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :remember_me
  
  devise :database_authenticatable, :confirmable, :recoverable, :rememberable, :trackable, :validatable, :registerable
  
end
