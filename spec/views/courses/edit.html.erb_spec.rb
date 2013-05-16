require 'spec_helper'

describe "courses/edit" do
  before(:each) do
    @course = assign(:course, stub_model(Course))
       
    view.stub(:current_consultant){FactoryGirl.build(:consultant)}
    @ability = Object.new
    @ability.extend(CanCan::Ability)
    controller.stub(:current_ability) { @ability }
  end

  it "renders the edit course form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", course_path(@course), "post" do
    end
  end
end
