class User < ActiveRecord::Base
  
  has_many :pets
  
end
