FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@evergreenlabs.org"}
    password Faker::Password.password
    first_name { Faker::Name.first_name }
    middle_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }

    phone "4156921069"
    birthday "1989-11-09"
  end

end