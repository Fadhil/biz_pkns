# encoding: UTF-8

class PastAttendance < ActiveRecord::Base
  attr_accessible :course, :email, :end_date, :first_name, :ic_number, :last_name, :phone, :program, :start_date, :venue

  validates_format_of :ic_number, with:  /^\d{6}\-\d{2}\-\d{4}$/, :message => I18n.t('errors.ic_format')
  validates_format_of :phone, with:  /^\d*$/, :message => I18n.t('errors.phone_number')
 
  scope :unsuccessful, where('successful = false OR successful is null')
  scope :successful , where(successful: true)
  scope :latest, where(latest_uploaded: true)
 
  def make_successful
    self.successful = true
    self.save
  end

  def create_member
    # If user already exists, just update the course details
    user = User.where('ic_number = ? OR email = ?', self.ic_number, self.email).first || User.new(first_name: self.first_name, last_name: self.last_name, ic_number: self.ic_number, email: self.email, password: 'password', password_confirmation: 'password', is_active: true, walk_in_first_time: true, confirmed: true)
    if user.new_record?
      self.newly_generated = true
      self.save
    end
    # Don't send confirmation email for testing
    #user.skip_confirmation!
    #user.save
    if user.save
    end
    program = Program.where(name: self.program).first
    course = Course.where(name: self.course, program_id: program.try(:id)).first

    # Newly created/old user joins course (becomes a member of that course)
    if course
      user.courses << course
    end
  end

  def self.make_all_old # Set 'latest_uploaded' to false, so older records don't show
    self.latest.each do |p|
      p.latest_uploaded = false
      p.newly_generated = false
      p.save
    end
  end
end
