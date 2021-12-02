FactoryBot.define do
  factory :poll do
    title { "MyString" }
    created_by { 1 }
    published { false }
  end
end
