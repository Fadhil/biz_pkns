require 'spec_helper'

describe "programs/show" do
  before(:each) do
    @program = assign(:program, stub_model(Program))
    @program.stub(:description).and_return('test')
    view.stub(:current_consultant){FactoryGirl.build(:consultant)}
    @ability = Object.new
    @ability.extend(CanCan::Ability)
    controller.stub(:current_ability) { @ability }
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
