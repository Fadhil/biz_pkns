require 'spec_helper'

describe "consultants/new" do
  before(:each) do
    assign(:consultant, stub_model(Consultant,
      :first_name => "MyString",
      :last_name => "MyString",
      :password => "MyString",
      :phone => "MyString",
      :bio_data => "MyText"
    ).as_new_record)
  end

  it "renders new consultant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", consultants_path, "post" do
      assert_select "input#consultant_first_name[name=?]", "consultant[first_name]"
      assert_select "input#consultant_last_name[name=?]", "consultant[last_name]"
      assert_select "input#consultant_password[name=?]", "consultant[password]"
      assert_select "input#consultant_phone[name=?]", "consultant[phone]"
      assert_select "textarea#consultant_bio_data[name=?]", "consultant[bio_data]"
    end
  end
end
