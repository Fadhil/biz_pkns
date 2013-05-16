require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ConsultantsController do
include AuthHelper
before(:each) do
  http_login
end
  # This should return the minimal set of attributes required to create a valid
  # Consultant. As you add validations to Consultant, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "first_name" => "MyString", email:'test@emial.com', password: 'password', password_confirmation: 'password' }
  end

  # # This should return the minimal set of values that should be in the session
  # # in order to pass any filters (e.g. authentication) defined in
  # # ConsultantsController. Be sure to keep this updated too.
  # def valid_session
  #   {}
  # end

  # describe "GET index" do
  #   it "assigns all consultants as @consultants" do
  #     consultant = Consultant.create! valid_attributes
  #     get :index, {}, valid_session
  #     assigns(:consultants).should eq([consultant])
  #   end
  # end

  # describe "GET show" do
  #   it "assigns the requested consultant as @consultant" do
  #     consultant = Consultant.create! valid_attributes
  #     get :show, {:id => consultant.to_param}, valid_session
  #     assigns(:consultant).should eq(consultant)
  #   end
  # end

  # describe "GET new" do
  #   it "assigns a new consultant as @consultant" do
  #     get :new, {}, valid_session
  #     assigns(:consultant).should be_a_new(Consultant)
  #   end
  # end

  # describe "GET edit" do
  #   it "assigns the requested consultant as @consultant" do
  #     consultant = Consultant.create! valid_attributes
  #     get :edit, {:id => consultant.to_param}, valid_session
  #     assigns(:consultant).should eq(consultant)
  #   end
  # end

  # describe "POST create" do
  #   describe "with valid params" do
  #     it "creates a new Consultant" do
  #       expect {
  #         post :create, {:consultant => valid_attributes}, valid_session
  #       }.to change(Consultant, :count).by(1)
  #     end

  #     it "assigns a newly created consultant as @consultant" do
  #       post :create, {:consultant => valid_attributes}, valid_session
  #       assigns(:consultant).should be_a(Consultant)
  #       assigns(:consultant).should be_persisted
  #     end

  #     it "redirects to the created consultant" do
  #       post :create, {:consultant => valid_attributes}, valid_session
  #       response.should redirect_to(Consultant.last)
  #     end
  #   end

  #   describe "with invalid params" do
  #     it "assigns a newly created but unsaved consultant as @consultant" do
  #       # Trigger the behavior that occurs when invalid params are submitted
  #       Consultant.any_instance.stub(:save).and_return(false)
  #       post :create, {:consultant => { "first_name" => "invalid value" }}, valid_session
  #       assigns(:consultant).should be_a_new(Consultant)
  #     end

  #     it "re-renders the 'new' template" do
  #       # Trigger the behavior that occurs when invalid params are submitted
  #       Consultant.any_instance.stub(:save).and_return(false)
  #       post :create, {:consultant => { "first_name" => "invalid value" }}, valid_session
  #       response.should render_template("new")
  #     end
  #   end
  # end

  # describe "PUT update" do
  #   describe "with valid params" do
  #     it "updates the requested consultant" do
  #       consultant = Consultant.create! valid_attributes
  #       # Assuming there are no other consultants in the database, this
  #       # specifies that the Consultant created on the previous line
  #       # receives the :update_attributes message with whatever params are
  #       # submitted in the request.
  #       Consultant.any_instance.should_receive(:update_attributes).with({ "first_name" => "MyString" })
  #       put :update, {:id => consultant.to_param, :consultant => { "first_name" => "MyString" }}, valid_session
  #     end

  #     it "assigns the requested consultant as @consultant" do
  #       consultant = Consultant.create! valid_attributes
  #       put :update, {:id => consultant.to_param, :consultant => valid_attributes}, valid_session
  #       assigns(:consultant).should eq(consultant)
  #     end

  #     it "redirects to the consultant" do
  #       consultant = Consultant.create! valid_attributes
  #       put :update, {:id => consultant.to_param, :consultant => valid_attributes}, valid_session
  #       response.should redirect_to(consultant)
  #     end
  #   end

  #   describe "with invalid params" do
  #     it "assigns the consultant as @consultant" do
  #       consultant = Consultant.create! valid_attributes
  #       # Trigger the behavior that occurs when invalid params are submitted
  #       Consultant.any_instance.stub(:save).and_return(false)
  #       put :update, {:id => consultant.to_param, :consultant => { "first_name" => "invalid value" }}, valid_session
  #       assigns(:consultant).should eq(consultant)
  #     end

  #     it "re-renders the 'edit' template" do
  #       consultant = Consultant.create! valid_attributes
  #       # Trigger the behavior that occurs when invalid params are submitted
  #       Consultant.any_instance.stub(:save).and_return(false)
  #       put :update, {:id => consultant.to_param, :consultant => { "first_name" => "invalid value" }}, valid_session
  #       response.should render_template("edit")
  #     end
  #   end
  # end

 

end
