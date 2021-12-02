namespace :generator do
  desc "Generate test data"
  task test_data: :environment do
    company = Company.create(name: "ПСБ")

    employee = company.employees.create(firstname: Faker::Name.first_name, lastname: Faker::Name.last_name, patronymic: Faker::Name.middle_name,
                                         email: Faker::Internet.email, phone: Faker::PhoneNumber.cell_phone_with_country_code,
                                         location: Faker::Address.city, position: Faker::Company.profession, age: "32 года")
  end

  desc "Delete test data"
  task delete_test_data: :environment do
    Company.destroy_all
  end
end
