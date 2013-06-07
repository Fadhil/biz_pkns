# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :newsletters_template, :class => 'Newsletters::Template' do
    name "MyString"
    template "MyText"
  end
end
