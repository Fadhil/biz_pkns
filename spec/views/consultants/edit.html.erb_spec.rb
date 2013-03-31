require 'spec_helper'

describe "consultants/edit" do
  before(:each) do
    @consultant = assign(:consultant, stub_model(Consultant,
      :first_name => "MyString",
      :last_name => "MyString",
      :password => "MyString",
      :phone => "MyString",
      :bio_data => "MyText"
    ))
  end

  it "renders the edit consultant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", consultant_path(@consultant), "post" do
      assert_select "input#consultant_first_name[name=?]", "consultant[first_name]"
      assert_select "input#consultant_last_name[name=?]", "consultant[last_name]"
      assert_select "input#consultant_password[name=?]", "consultant[password]"
      assert_select "input#consultant_phone[name=?]", "consultant[phone]"
      assert_select "textarea#consultant_bio_data[name=?]", "consultant[bio_data]"
    end
  end
end
