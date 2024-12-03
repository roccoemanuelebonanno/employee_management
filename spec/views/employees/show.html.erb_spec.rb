require 'rails_helper'

RSpec.describe "employees/show", type: :view do
  before(:each) do
    assign(:employee, Employee.create!(
      first_name: "First Name",
      last_name: "Last Name",
      tax_code: "Tax Code",
      age: 2,
      email: "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Tax Code/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Email/)
  end
end
