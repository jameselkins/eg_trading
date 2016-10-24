FactoryGirl.define do
  factory :admin_user do
    sequence(:email) { |n| "admin_user#{n}@evergreenlabs.org" }
    password Faker::Password.password
    roles { ['admin']}

    first_name { Faker::Name.first_name }
    last_name  { Faker::Name.last_name }

    phone        "4156921069"
  end

  factory :super_admin, parent: :admin_user do
    email { "super@evergreenlabs.org" }
    roles { ['super', 'admin']}
  end

end