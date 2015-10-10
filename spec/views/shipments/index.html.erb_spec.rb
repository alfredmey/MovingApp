require 'rails_helper'

RSpec.describe "shipments/index", type: :view do
  before(:each) do
    assign(:shipments, [
      Shipment.create!(
        :wieght => 1,
        :company_id => 2,
        :discount => "Discount",
        :notes => "MyText",
        :user_id => 3,
        :origin_id => 4,
        :dest_id => 5,
        :origin_agent => "Origin Agent",
        :dest_agent => "Dest Agent",
        :carrier => "Carrier",
        :reg_no => "Reg No",
        :atlas_no => "Atlas No",
        :gbl_no => "Gbl No",
        :move_type => "Move Type",
        :miles => 6,
        :hauler => "Hauler",
        :surveyor => "Surveyor",
        :booker => "Booker",
        :apu => false
      ),
      Shipment.create!(
        :wieght => 1,
        :company_id => 2,
        :discount => "Discount",
        :notes => "MyText",
        :user_id => 3,
        :origin_id => 4,
        :dest_id => 5,
        :origin_agent => "Origin Agent",
        :dest_agent => "Dest Agent",
        :carrier => "Carrier",
        :reg_no => "Reg No",
        :atlas_no => "Atlas No",
        :gbl_no => "Gbl No",
        :move_type => "Move Type",
        :miles => 6,
        :hauler => "Hauler",
        :surveyor => "Surveyor",
        :booker => "Booker",
        :apu => false
      )
    ])
  end

  it "renders a list of shipments" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Discount".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "Origin Agent".to_s, :count => 2
    assert_select "tr>td", :text => "Dest Agent".to_s, :count => 2
    assert_select "tr>td", :text => "Carrier".to_s, :count => 2
    assert_select "tr>td", :text => "Reg No".to_s, :count => 2
    assert_select "tr>td", :text => "Atlas No".to_s, :count => 2
    assert_select "tr>td", :text => "Gbl No".to_s, :count => 2
    assert_select "tr>td", :text => "Move Type".to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => "Hauler".to_s, :count => 2
    assert_select "tr>td", :text => "Surveyor".to_s, :count => 2
    assert_select "tr>td", :text => "Booker".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
