require 'spec_helper'

describe "newsletters/templates/edit" do
  before(:each) do
    @newsletters_template = assign(:newsletters_template, stub_model(Newsletters::Template,
      :name => "MyString",
      :template => "MyText"
    ))
  end

  it "renders the edit newsletters_template form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", newsletters_template_path(@newsletters_template), "post" do
      assert_select "input#newsletters_template_name[name=?]", "newsletters_template[name]"
      assert_select "textarea#newsletters_template_template[name=?]", "newsletters_template[template]"
    end
  end
end
