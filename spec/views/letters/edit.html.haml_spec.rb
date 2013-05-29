require 'spec_helper'

describe "letters/edit" do
  before(:each) do
    @letter = assign(:letter, stub_model(Letter,
      :subject => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :message => "MyString"
    ))
  end

  it "renders the edit letter form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", letter_path(@letter), "post" do
      assert_select "input#letter_subject[name=?]", "letter[subject]"
      assert_select "input#letter_first_name[name=?]", "letter[first_name]"
      assert_select "input#letter_last_name[name=?]", "letter[last_name]"
      assert_select "input#letter_message[name=?]", "letter[message]"
    end
  end
end
