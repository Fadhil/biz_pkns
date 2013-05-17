require 'spec_helper'

describe "educations/index" do
  before(:each) do
    assign(:educations, [
      stub_model(Education),
      stub_model(Education)
    ])
  end

  it "renders a list of educations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
