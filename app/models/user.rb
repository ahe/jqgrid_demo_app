class User < ActiveRecord::Base
  
  has_many :pets
  validates_presence_of :pseudo
  
end
