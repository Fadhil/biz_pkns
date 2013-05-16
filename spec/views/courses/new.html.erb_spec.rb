require 'spec_helper'

describe "courses/new" do
  before(:each) do
    assign(:course, stub_model(Course).as_new_record)
    view.stub(:current_consultant){FactoryGirl.build(:consultant)}
    @ability = Object.new
    @ability.extend(CanCan::Ability)
    controller.stub(:current_ability) { @ability }
  end

  it "renders new course form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", courses_path, "post" do
    end
  end
end
