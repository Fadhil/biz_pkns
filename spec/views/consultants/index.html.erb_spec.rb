require 'spec_helper'

describe "consultants/index" do
  before(:each) do
    assign(:consultants, [
      stub_model(Consultant,
        :first_name => "First Name",
        :last_name => "Last Name",
        :password => "Password",
        :phone => "Phone",
        :bio_data => "MyText"
      ),
      stub_model(Consultant,
        :first_name => "First Name",
        :last_name => "Last Name",
        :password => "Password",
        :phone => "Phone",
        :bio_data => "MyText"
      )
    ])
  end

  it "renders a list of consultants" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
