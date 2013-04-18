class EducationsUser < ActiveRecord::Base
  attr_accessible :description, :education_id, :end_date, :start_date, :user_id
end
