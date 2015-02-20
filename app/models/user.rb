class User < ActiveRecord::Base
    has_many :articles
    has_many :news
    has_many :jobs
    has_many :advertisements
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable
end
