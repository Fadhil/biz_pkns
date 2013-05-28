class PastAttendance < ActiveRecord::Base
  attr_accessible :course, :email, :end_date, :first_name, :ic_number, :last_name, :phone, :program, :start_date, :venue

  validates_format_of :ic_number, with:  /^\d{6}\-\d{2}\-\d{4}$/, :message => I18n.t('errors.ic_format')
  validates_format_of :phone, with:  /^\d*$/, :message => I18n.t('errors.phone_number')
 
  scope :unsuccessful, where('successful = false OR successful is null')
  scope :successful , where(successful: true)
 
  def make_successful
    self.successful = true
    self.save
  end

  def create_member
    user = User.where('ic_number = ? OR email = ?', self.ic_number, self.email).first || User.new(first_name: self.first_name, last_name: self.last_name, ic_number: self.ic_number, email: self.email, password: 'password', password_confirmation: 'password', is_active: true, walk_in_first_time: true, confirmed: true)

    user.save
    program = Program.where(name: self.program).first
    course = Course.where(name: self.course, program_id: program.try(:id)).first

    if course
      user.courses << course
    end
  end
end
