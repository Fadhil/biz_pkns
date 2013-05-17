require 'spec_helper'

describe "educations/edit" do
  before(:each) do
    @education = assign(:education, stub_model(Education))
  end

  it "renders the edit education form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", education_path(@education), "post" do
    end
  end
end
