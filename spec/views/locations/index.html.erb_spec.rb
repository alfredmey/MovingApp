require 'rails_helper'

RSpec.describe "locations/index", type: :view do
  before(:each) do
    assign(:locations, [
      Location.create!(
        :name => "Name",
        :address => "Address",
        :city => "City",
        :state => "State",
        :zip => 1,
        :phone => "Phone",
        :cell => "Cell",
        :notes => "MyText"
      ),
      Location.create!(
        :name => "Name",
        :address => "Address",
        :city => "City",
        :state => "State",
        :zip => 1,
        :phone => "Phone",
        :cell => "Cell",
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of locations" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Cell".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
