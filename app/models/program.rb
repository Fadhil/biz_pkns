class Program < ActiveRecord::Base
  attr_accessible :description, :name, :logo_attributes, :courses_attributes, :active

  has_many :courses, dependent: :destroy#, inverse_of: :program
  has_many :previous_courses, dependent: :destroy 
  has_one :logo, as: :attachable, dependent: :destroy
  has_many :consultants_programs
  accepts_nested_attributes_for :consultants_programs

  has_many :users, through: :courses

  has_many :consultants, through: :consultants_programs

  has_many :targets, dependent: :destroy
  accepts_nested_attributes_for :targets
  accepts_nested_attributes_for :consultants

  accepts_nested_attributes_for :logo, allow_destroy: true
  accepts_nested_attributes_for :courses, allow_destroy: true
  accepts_nested_attributes_for :previous_courses, allow_destroy: true

  scope :active, where('active = true')


  def count_users_by_course(course_types, year)
    result_set = {}
    grand_total = 0
    course_types.each do |course_type|
      result_set[course_type] = {} unless result_set[course_type]
      total_users = 0
      self.courses.year(year).course_type(course_type).each do |course|
        result_set[course_type][course.start_date] = 0 unless result_set[course_type][course.start_date] != nil
        result_set[course_type][course.start_date] += course.users.count
        total_users += course.users.count
      end
      result_set[course_type]['total_users'] = total_users
      grand_total += total_users
    end
    result_set['grand_total'] = grand_total
    result_set
  end

  def course_types(year)
    self.courses.year(year).map(&:course_type).uniq.select{|x| x != nil }
  end
end
