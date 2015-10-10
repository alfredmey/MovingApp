require 'rails_helper'

RSpec.describe "locations/edit", type: :view do
  before(:each) do
    @location = assign(:location, Location.create!(
      :name => "MyString",
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => 1,
      :phone => "MyString",
      :cell => "MyString",
      :notes => "MyText"
    ))
  end

  it "renders the edit location form" do
    render

    assert_select "form[action=?][method=?]", location_path(@location), "post" do

      assert_select "input#location_name[name=?]", "location[name]"

      assert_select "input#location_address[name=?]", "location[address]"

      assert_select "input#location_city[name=?]", "location[city]"

      assert_select "input#location_state[name=?]", "location[state]"

      assert_select "input#location_zip[name=?]", "location[zip]"

      assert_select "input#location_phone[name=?]", "location[phone]"

      assert_select "input#location_cell[name=?]", "location[cell]"

      assert_select "textarea#location_notes[name=?]", "location[notes]"
    end
  end
end
