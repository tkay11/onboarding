FactoryBot.define do
  factory :employee_task, class: 'Employee::Task' do
    employee { nil }
    name { "MyString" }
    description { "MyText" }
    status { "MyString" }
  end
end
