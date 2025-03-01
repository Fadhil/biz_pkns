class Attendee < ActiveRecord::Base
  attr_accessible :attended, :email, :ic_number, :name, :first_name, :last_name, :user_id, :attendance_status

  has_one :course, through: :attendance_list

  belongs_to :attendance_list

  after_create :create_walk_in_user

  validates_format_of :ic_number, with:  /^\d{6}\-\d{2}\-\d{4}$/, :message => I18n.t('errors.ic_format')

  scope :non_members, where(user_id: nil)

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def self.create_walk_in_user
    walk_ins = Attendee.non_members

    walk_ins.each do |w|
      user_with_existing_ic = User.find_by_ic_number(w.ic_number)

      new_user = user_with_existing_ic || 
                  User.create(first_name: w.first_name, last_name: w.last_name, email: w.email, ic_number: w.ic_number, password: 'password', password_confirmation: 'password', is_active: true)


      unless new_user.nil?
        w.user_id = new_user.id
        new_user.make_member
        w.save
      end
    end
  end

  def create_walk_in_user
    user_with_existing_ic = User.find_by_ic_number(self.ic_number)

    new_user = User.create(first_name: self.first_name, last_name: self.last_name, email: self.email, ic_number: self.ic_number, password: 'password', password_confirmation: 'password', is_active: true, walk_in_first_time: true, confirmed: true)

    
    unless new_user.nil? || user_with_existing_ic
      self.user_id = new_user.id
      new_user.make_member
      self.save
    end
  end


end
