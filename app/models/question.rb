class Question < ActiveRecord::Base
  attr_accessible :option1, :option2, :option3, :option4, :title, :type, :question_type
  belongs_to :survey
  has_many :responses
end
