require 'rails_helper'

RSpec.describe "employees/index", type: :view do
  before(:each) do
    assign(:employees, [
      Employee.create!(
        first_name: "First Name",
        last_name: "Last Name",
        tax_code: "Tax Code",
        age: 2,
        email: "Email"
      ),
      Employee.create!(
        first_name: "First Name",
        last_name: "Last Name",
        tax_code: "Tax Code",
        age: 2,
        email: "Email"
      )
    ])
  end

  it "renders a list of employees" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("First Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Last Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Tax Code".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
  end
end
