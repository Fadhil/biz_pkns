class ConsultantsProgram < ActiveRecord::Base
  attr_accessible :consultant_id, :program_id

  belongs_to :consultant
  belongs_to :program
end
