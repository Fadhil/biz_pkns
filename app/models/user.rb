class User < ActiveRecord::Base
  attr_accessible :email, :ic_number, :name, :password, :phone, :username
end
