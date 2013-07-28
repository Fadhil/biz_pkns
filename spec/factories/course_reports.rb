# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :course_report do
    course_id 1
    course_details "MyText"
    course_summary "MyText"
    report_date "2013-07-28"
    course_title "MyString"
    course_date "2013-07-28"
    consultant_email "MyString"
    course_targeted_attendees 1
    course_actual_attendees 1
    course_no_of_vips 1
  end
end
