class Course < ActiveRecord::Base
  attr_accessible :description, :end_date, :name, :start_date, :venue, :status, :course_category_id
  attr_accessible :program_id, :pax, :course_type
  belongs_to :program#, inverse_of: :courses
  accepts_nested_attributes_for :program
  has_one :consultant, through: :program
  has_and_belongs_to_many :users
  has_one :attendance_list, dependent: :destroy
  has_many :attendees, through: :attendance_list

  after_create :add_attendance_list

  has_one :course_report, dependent: :destroy

  belongs_to :course_category

  scope :upcoming, lambda{ where('start_date >= ?', Date.today)}
  scope :active, lambda{ where('status = true AND end_date >= ?', Date.today)}
  scope :latest, order('created_at DESC')
  scope :year, lambda{ |year| where('start_date >= ? AND start_date <= ?', "#{year}-01-01","#{year}-12-31")}

  scope :course_type, lambda{ |course_type| where(course_type: course_type)}
  scope :completed, joins(:attendance_list).where('attendance_lists.completed is true')

  validates_numericality_of :pax

  def add_attendance_list
    self.attendance_list = AttendanceList.new
    self.attendance_list.max_attendees = self.pax
    self.attendance_list.attendee_counter = 0
    self.attendance_list.program_id = self.program_id
    self.attendance_list.save
    self.save
  end

  def full?
    return if self.attendance_list.nil?
    # Full only if 30% more than max_attendees
    self.attendance_list.attendees.count > ( self.attendance_list.max_attendees + ( self.attendance_list.max_attendees * 0.3).floor ) ? true : false
  end

  def self.for_period(year= Date.today.year,month = '01')
    where('start_date >= ? AND start_date <= ?', "#{year}-#{month}-1", DateTime.new(year.to_i,month.to_i,-1).strftime('%Y-%m-%d'))
  end
end