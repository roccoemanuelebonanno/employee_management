FactoryBot.define do
  factory :employee do
    first_name { "MyString" }
    last_name { "MyString" }
    tax_code { "MyString" }
    birth_date { "2024-12-03" }
    age { 1 }
    email { "MyString" }
  end
end
