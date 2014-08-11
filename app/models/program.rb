class Program < ActiveRecord::Base
  attr_accessible :description, :name, :logo_attributes, :courses_attributes, :active, :targets_attributes

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
    result_set['program_name'] = self.name
    result_set
  end

  def course_types(year=nil)
    if year==nil
      self.courses.map(&:course_type).uniq.select{|x| x!= nil }
    else
      self.courses.year(year).map(&:course_type).uniq.select{|x| x != nil }
    end
  end

  def self.users_by_program
    the_data = {}
    with_business_total = 0
    without_business_total = 0
    active.each do |program|
      the_data[program.name] = {} unless the_data[program.name]
      p_member_count = program.users.members.count
      the_data[program.name]['with_business'] = program.users.members.joins(:business_profiles).uniq.to_a.size
      the_data[program.name]['without_business'] = ( p_member_count - the_data[program.name]['with_business'] ) 
      with_business_total += the_data[program.name]['with_business']
      without_business_total += the_data[program.name]['without_business']

    end
    the_data['Jumlah']= {'with_business'=> User.members.joins(:business_profiles).uniq.to_a.size, 'without_business' => (User.members.size - User.members.joins(:business_profiles).uniq.to_a.size) }

    the_data
  end

  def self.get_month(month)
    case month
    when 1
      'Januari'
    when 2
      'Februari'
    when 3
      'Mac'
    when 4
      'April'
    when 5
      'Mei'
    when 6
      'Jun'
    when 7
      'Julai'
    when 8
      'Ogos'
    when 9
      'September'
    when 10
      'Oktober'
    when 11
      'November'
    when 12
      'Disember'
    end
  end

  def self.get_kpi(year=Date.today.year)
    kpi_results = {}
    months =  [['jan','01'],
                ['feb','02'],
                ['mar','03'],
                ['apr','04'],
                ['may','05'],
                ['jun','06'],
                ['jul','07'],
                ['aug','08'],
                ['sep','09'],
                ['oct','10'],
                ['nov','11'],
                ['dec','12']]
    Program.all.each do |program|
      course_types = program.course_types(year)
      courses = program.courses.year(year)

      kpi_results['current_month']  = get_month(Date.today.month)

      if !courses.empty?
        kpi_results[program.name] = {} unless kpi_results[program.name]

        course_types.each do |course_type|
          current_actual_total = 0
          kpi_results[program.name][course_type] = {} unless kpi_results[program.name][course_type]
          months.each do |month, month_index|
          
            kpi_results[program.name][course_type][month] = program.courses.completed.for_period(year,month_index).course_type(course_type).sum{ |x| x.try(:attendance_list).try(:attendees).try(:count) }
            current_actual_total += kpi_results[program.name][course_type][month]
          end
          kpi_results[program.name][course_type]['current_total'] = program.courses.completed.year(year).course_type(course_type).sum{ |x| x.try(:attendance_list).try(:attendees).try(:count)}
          
          course_category_id = CourseCategory.where(name: course_type).first.try(:id)
          program_target = program.targets(year).course_category_id(course_category_id).order(:created_at).first

          kpi_results[program.name][course_type]['per_session_target'] = 0
          kpi_results[program.name][course_type]['per_session_target'] = program_target.target_attendance unless program_target.nil?
 
          kpi_results[program.name][course_type]['yearly_number_of_courses'] = 0
          kpi_results[program.name][course_type]['yearly_number_of_courses'] = program_target.number_of_courses unless program_target.nil?
     
          kpi_results[program.name][course_type]['current_number_of_courses'] = 0
          kpi_results[program.name][course_type]['current_number_of_courses'] = program.courses.completed.year(year).try(:count) 
         
          kpi_results[program.name][course_type]['yearly_number_of_courses'] = 0
          kpi_results[program.name][course_type]['yearly_number_of_courses'] = program_target.number_of_courses unless program_target.nil? 

          kpi_results[program.name][course_type]['current_target'] = 0
          kpi_results[program.name][course_type]['current_target'] = ( program_target.target_attendance * program.courses.completed.year(year).try(:count) ) unless program_target.nil?
         

          kpi_results[program.name][course_type]['yearly_target'] = 0
          kpi_results[program.name][course_type]['yearly_target'] = ( program_target.target_attendance * program_target.number_of_courses ) unless program_target.nil?
  
          kpi_results[program.name][course_type]['current_actual'] = 0.0
          kpi_results[program.name][course_type]['current_actual'] = (current_actual_total.to_f / kpi_results[program.name][course_type]['current_target'].to_f * 100 ).round(2) unless kpi_results[program.name][course_type]['current_target'] == 0
        
          kpi_results[program.name][course_type]['yearly_actual'] = 0.0
          kpi_results[program.name][course_type]['yearly_actual'] = (current_actual_total.to_f / kpi_results[program.name][course_type]['yearly_target'].to_f * 100).round(2) unless kpi_results[program.name][course_type]['yearly_target'] == 0
          
        end

        kpi_results[program.name]['number_of_course_types'] = course_types.count
      end

      
    end

    kpi_results
  end
end
