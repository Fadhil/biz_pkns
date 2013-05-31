class CompletedSurvey < ActiveRecord::Base
  attr_accessible :completed, :survey_id, :user_id

  belongs_to :user
  belongs_to :survey 
end

