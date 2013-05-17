require 'spec_helper'

describe "educations/new" do
  before(:each) do
    assign(:education, stub_model(Education).as_new_record)
  end

  it "renders new education form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", educations_path, "post" do
    end
  end
end
