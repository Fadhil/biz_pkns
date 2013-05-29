require 'spec_helper'

describe "letters/index" do
  before(:each) do
    assign(:letters, [
      stub_model(Letter,
        :subject => "Subject",
        :first_name => "First Name",
        :last_name => "Last Name",
        :message => "Message"
      ),
      stub_model(Letter,
        :subject => "Subject",
        :first_name => "First Name",
        :last_name => "Last Name",
        :message => "Message"
      )
    ])
  end

  it "renders a list of letters" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Message".to_s, :count => 2
  end
end
