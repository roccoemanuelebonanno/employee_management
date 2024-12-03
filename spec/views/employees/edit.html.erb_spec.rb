require "rails_helper"

RSpec.describe "employees/edit", type: :view do
  let(:employee) {
    Employee.create!(
      first_name: "MyString",
      last_name: "MyString",
      tax_code: "MyString",
      age: 1,
      email: "MyString"
    )
  }

  before(:each) do
    assign(:employee, employee)
  end

  it "renders the edit employee form" do
    render

    assert_select "form[action=?][method=?]", employee_path(employee), "post" do
      assert_select "input[name=?]", "employee[first_name]"

      assert_select "input[name=?]", "employee[last_name]"

      assert_select "input[name=?]", "employee[tax_code]"

      assert_select "input[name=?]", "employee[age]"

      assert_select "input[name=?]", "employee[email]"
    end
  end
end
