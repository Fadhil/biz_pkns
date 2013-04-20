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


end
