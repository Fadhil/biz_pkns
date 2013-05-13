class Course < ActiveRecord::Base
  attr_accessible :description, :end_date, :name, :start_date, :venue, :status
  attr_accessible :program_id, :pax, :course_type
  belongs_to :program#, inverse_of: :courses
  accepts_nested_attributes_for :program
  has_one :consultant, through: :program
  has_and_belongs_to_many :users
  has_one :attendance_list, dependent: :destroy

  after_create :add_attendance_list

  scope :upcoming, lambda{ where('start_date >= ?', Date.today)}
  scope :active, where(status: true)

  validates_numericality_of :pax

  def add_attendance_list
    self.attendance_list = AttendanceList.new
    self.attendance_list.max_attendees = self.pax
    self.attendance_list.attendee_counter = 0
    self.attendance_list.program_id = self.program_id
    self.attendance_list.save
    self.save
  end
end