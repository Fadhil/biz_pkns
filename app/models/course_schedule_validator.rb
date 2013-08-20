class CourseScheduleValidator < ActiveModel::Validator
  def validate(resource)
    if resource.course_schedule.nil?
      resource.errors[:base] << "1 gambarajah jadual kursus diperlukan"
    end
  end
end