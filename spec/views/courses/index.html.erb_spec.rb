require 'spec_helper'

describe "courses/index" do
  before(:each) do

    courses = [ stub_model(Course),
                stub_model(Course)]
    courses.stub!(:current_page).and_return(1)
    courses.stub!(:total_pages){2}
    courses.stub!(:limit_value){30}
    assign(:courses, courses)
    view.stub(:current_consultant){FactoryGirl.build(:consultant)}
    @ability = Object.new
    @ability.extend(CanCan::Ability)
    controller.stub(:current_ability) { @ability }

  end

  it "renders a list of courses" do
    @ability.can :manage, :all
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
