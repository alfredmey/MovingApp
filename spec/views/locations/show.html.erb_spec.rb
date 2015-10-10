require 'rails_helper'

RSpec.describe "locations/show", type: :view do
  before(:each) do
    @location = assign(:location, Location.create!(
      :name => "Name",
      :address => "Address",
      :city => "City",
      :state => "State",
      :zip => 1,
      :phone => "Phone",
      :cell => "Cell",
      :notes => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Cell/)
    expect(rendered).to match(/MyText/)
  end
end
