class Newsletter < ActiveRecord::Base
  attr_accessible :message, :subject
end
