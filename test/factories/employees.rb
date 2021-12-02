FactoryBot.define do
  factory :employee do
    company { nil }
    firstname { "MyString" }
    lastname { "MyString" }
    patronymic { "MyString" }
    email { "MyString" }
    phone { "MyString" }
  end
end
