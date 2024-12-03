require 'rails_helper'

RSpec.describe "employees/new", type: :view do
  before(:each) do
    assign(:employee, Employee.new(
      first_name: "MyString",
      last_name: "MyString",
      tax_code: "MyString",
      age: 1,
      email: "MyString"
    ))
  end

  it "renders new employee form" do
    render

    assert_select "form[action=?][method=?]", employees_path, "post" do

      assert_select "input[name=?]", "employee[first_name]"

      assert_select "input[name=?]", "employee[last_name]"

      assert_select "input[name=?]", "employee[tax_code]"

      assert_select "input[name=?]", "employee[age]"

      assert_select "input[name=?]", "employee[email]"
    end
  end
end
