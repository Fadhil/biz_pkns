require 'spec_helper'

describe "newsletters/templates/index" do
  before(:each) do
    assign(:newsletters_templates, [
      stub_model(Newsletters::Template,
        :name => "Name",
        :template => "MyText"
      ),
      stub_model(Newsletters::Template,
        :name => "Name",
        :template => "MyText"
      )
    ])
  end

  it "renders a list of newsletters/templates" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
