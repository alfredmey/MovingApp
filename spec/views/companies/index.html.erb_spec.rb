require 'rails_helper'

RSpec.describe "companies/index", type: :view do
  before(:each) do
    assign(:companies, [
      Company.create!(
        :name => "Name",
        :address => "Address",
        :city => "City",
        :state => "State",
        :zip => 1,
        :agent_code => 2,
        :phone => "Phone",
        :fax => "Fax",
        :email => "Email"
      ),
      Company.create!(
        :name => "Name",
        :address => "Address",
        :city => "City",
        :state => "State",
        :zip => 1,
        :agent_code => 2,
        :phone => "Phone",
        :fax => "Fax",
        :email => "Email"
      )
    ])
  end

  it "renders a list of companies" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Fax".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
