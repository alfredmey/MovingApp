require 'rails_helper'

RSpec.describe "shipments/show", type: :view do
  before(:each) do
    @shipment = assign(:shipment, Shipment.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Discount/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/Origin Agent/)
    expect(rendered).to match(/Dest Agent/)
    expect(rendered).to match(/Carrier/)
    expect(rendered).to match(/Reg No/)
    expect(rendered).to match(/Atlas No/)
    expect(rendered).to match(/Gbl No/)
    expect(rendered).to match(/Move Type/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/Hauler/)
    expect(rendered).to match(/Surveyor/)
    expect(rendered).to match(/Booker/)
    expect(rendered).to match(/false/)
  end
end
