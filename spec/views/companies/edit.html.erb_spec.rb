require 'rails_helper'

RSpec.describe "companies/edit", type: :view do
  before(:each) do
    @company = assign(:company, Company.create!(
      :name => "MyString",
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => 1,
      :agent_code => 1,
      :phone => "MyString",
      :fax => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit company form" do
    render

    assert_select "form[action=?][method=?]", company_path(@company), "post" do

      assert_select "input#company_name[name=?]", "company[name]"

      assert_select "input#company_address[name=?]", "company[address]"

      assert_select "input#company_city[name=?]", "company[city]"

      assert_select "input#company_state[name=?]", "company[state]"

      assert_select "input#company_zip[name=?]", "company[zip]"

      assert_select "input#company_agent_code[name=?]", "company[agent_code]"

      assert_select "input#company_phone[name=?]", "company[phone]"

      assert_select "input#company_fax[name=?]", "company[fax]"

      assert_select "input#company_email[name=?]", "company[email]"
    end
  end
end
