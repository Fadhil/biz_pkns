require 'spec_helper'

describe "newsletters/templates/show" do
  before(:each) do
    @newsletters_template = assign(:newsletters_template, stub_model(Newsletters::Template,
      :name => "Name",
      :template => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
  end
end
