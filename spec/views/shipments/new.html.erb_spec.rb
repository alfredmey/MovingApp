require 'rails_helper'

RSpec.describe "shipments/new", type: :view do
  before(:each) do
    assign(:shipment, Shipment.new(
      :wieght => 1,
      :company_id => 1,
      :discount => "MyString",
      :notes => "MyText",
      :user_id => 1,
      :origin_id => 1,
      :dest_id => 1,
      :origin_agent => "MyString",
      :dest_agent => "MyString",
      :carrier => "MyString",
      :reg_no => "MyString",
      :atlas_no => "MyString",
      :gbl_no => "MyString",
      :move_type => "MyString",
      :miles => 1,
      :hauler => "MyString",
      :surveyor => "MyString",
      :booker => "MyString",
      :apu => false
    ))
  end

  it "renders new shipment form" do
    render

    assert_select "form[action=?][method=?]", shipments_path, "post" do

      assert_select "input#shipment_wieght[name=?]", "shipment[wieght]"

      assert_select "input#shipment_company_id[name=?]", "shipment[company_id]"

      assert_select "input#shipment_discount[name=?]", "shipment[discount]"

      assert_select "textarea#shipment_notes[name=?]", "shipment[notes]"

      assert_select "input#shipment_user_id[name=?]", "shipment[user_id]"

      assert_select "input#shipment_origin_id[name=?]", "shipment[origin_id]"

      assert_select "input#shipment_dest_id[name=?]", "shipment[dest_id]"

      assert_select "input#shipment_origin_agent[name=?]", "shipment[origin_agent]"

      assert_select "input#shipment_dest_agent[name=?]", "shipment[dest_agent]"

      assert_select "input#shipment_carrier[name=?]", "shipment[carrier]"

      assert_select "input#shipment_reg_no[name=?]", "shipment[reg_no]"

      assert_select "input#shipment_atlas_no[name=?]", "shipment[atlas_no]"

      assert_select "input#shipment_gbl_no[name=?]", "shipment[gbl_no]"

      assert_select "input#shipment_move_type[name=?]", "shipment[move_type]"

      assert_select "input#shipment_miles[name=?]", "shipment[miles]"

      assert_select "input#shipment_hauler[name=?]", "shipment[hauler]"

      assert_select "input#shipment_surveyor[name=?]", "shipment[surveyor]"

      assert_select "input#shipment_booker[name=?]", "shipment[booker]"

      assert_select "input#shipment_apu[name=?]", "shipment[apu]"
    end
  end
end
