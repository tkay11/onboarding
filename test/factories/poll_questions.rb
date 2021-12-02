FactoryBot.define do
  factory :poll_question do
    text { "MyString" }
    poll_id { 1 }
    number { 1 }
  end
end
