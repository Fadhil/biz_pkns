class Letter < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :message, :subject
end
