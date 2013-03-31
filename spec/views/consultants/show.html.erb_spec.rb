require 'spec_helper'

describe "consultants/show" do
  before(:each) do
    @consultant = assign(:consultant, stub_model(Consultant,
      :first_name => "First Name",
      :last_name => "Last Name",
      :password => "Password",
      :phone => "Phone",
      :bio_data => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Password/)
    rendered.should match(/Phone/)
    rendered.should match(/MyText/)
  end
end
