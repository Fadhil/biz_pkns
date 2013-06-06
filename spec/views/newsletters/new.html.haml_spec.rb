require 'spec_helper'

describe "newsletters/new" do
  before(:each) do
    assign(:newsletter, stub_model(Newsletter,
      :subject => "MyString",
      :message => "MyText"
    ).as_new_record)
  end

  it "renders new newsletter form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", newsletters_path, "post" do
      assert_select "input#newsletter_subject[name=?]", "newsletter[subject]"
      assert_select "textarea#newsletter_message[name=?]", "newsletter[message]"
    end
  end
end
