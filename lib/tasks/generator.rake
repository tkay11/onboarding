namespace :generator do
  desc "Generate test data"
  task test_data: :environment do
    company1 = Company.create(name: Faker::Company.name)

    employee1 = company1.employees.create(firstname: Faker::Name.first_name, lastname: Faker::Name.last_name, patronymic: Faker::Name.middle_name,
                                         email: Faker::Internet.email, phone: Faker::PhoneNumber.cell_phone_with_country_code,
                                         location: Faker::Address.city, position: Faker::Company.profession, age: "#{20 + Random.rand(15)} лет")
    employee2 = company1.employees.create(firstname: Faker::Name.first_name, lastname: Faker::Name.last_name, patronymic: Faker::Name.middle_name,
                                         email: Faker::Internet.email, phone: Faker::PhoneNumber.cell_phone_with_country_code,
                                         location: Faker::Address.city, position: Faker::Company.profession, age: "#{20 + Random.rand(15)} лет")
    employee3 = company1.employees.create(firstname: Faker::Name.first_name, lastname: Faker::Name.last_name, patronymic: Faker::Name.middle_name,
                                         email: Faker::Internet.email, phone: Faker::PhoneNumber.cell_phone_with_country_code,
                                         location: Faker::Address.city, position: Faker::Company.profession, age: "#{20 + Random.rand(15)} лет")
    employee1.tasks.create(name: Faker::String.random(length: 10), description: Faker::String.random(length: 30))
    employee1.tasks.create(name: Faker::String.random(length: 10), description: Faker::String.random(length: 30))
    employee1.tasks.create(name: Faker::String.random(length: 10), description: Faker::String.random(length: 30))
  end

  desc "Delete test data"
  task delete_test_data: :environment do
    Company.destroy_all
  end
end
