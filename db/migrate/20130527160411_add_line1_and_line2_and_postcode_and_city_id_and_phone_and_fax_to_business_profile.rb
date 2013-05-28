class AddLine1AndLine2AndPostcodeAndCityIdAndPhoneAndFaxToBusinessProfile < ActiveRecord::Migration
  def change
    add_column :business_profiles, :line1, :string
    add_column :business_profiles, :line2, :string
    add_column :business_profiles, :postcode, :string
    add_column :business_profiles, :city_id, :integer
    add_column :business_profiles, :phone, :string
    add_column :business_profiles, :fax, :string
  end
end
