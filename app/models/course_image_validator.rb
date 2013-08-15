class CourseImageValidator < ActiveModel::Validator
  def validate(record)
    if record.course_photos.size < 5
      record.errors[:base] << "6 gambar diperlukan"
    end
  end
end