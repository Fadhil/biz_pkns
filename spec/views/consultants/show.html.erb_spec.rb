require 'spec_helper'

describe "consultants/show" do
  before(:each) do
    @consultant = assign(:consultant, stub_model(Consultant,
      :first_name => "First Name",
      :last_name => "Last Name",
      :password => "Password",
      :phone => "Phone",
      :bio_data => "MyText"
    ))
  end


end
