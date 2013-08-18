class CourseScheduleValidator < ActiveModel::Validator
  def validate(resource)
    if record.course_schedule.nil?
      record.errors[:base] << "1 gambarajah jadual kursus diperlukan"
    end
  end
end