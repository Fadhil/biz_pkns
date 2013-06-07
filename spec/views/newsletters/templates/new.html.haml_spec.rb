require 'spec_helper'

describe "newsletters/templates/new" do
  before(:each) do
    assign(:newsletters_template, stub_model(Newsletters::Template,
      :name => "MyString",
      :template => "MyText"
    ).as_new_record)
  end

  it "renders new newsletters_template form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", newsletters_templates_path, "post" do
      assert_select "input#newsletters_template_name[name=?]", "newsletters_template[name]"
      assert_select "textarea#newsletters_template_template[name=?]", "newsletters_template[template]"
    end
  end
end
