require 'spec_helper'

describe "letters/show" do
  before(:each) do
    @letter = assign(:letter, stub_model(Letter,
      :subject => "Subject",
      :first_name => "First Name",
      :last_name => "Last Name",
      :message => "Message"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Subject/)
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Message/)
  end
end
