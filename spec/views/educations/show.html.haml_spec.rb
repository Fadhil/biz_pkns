require 'spec_helper'

describe "educations/show" do
  before(:each) do
    @education = assign(:education, stub_model(Education))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
