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

end
