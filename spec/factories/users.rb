FactoryBot.define do
  factory :user do
    email     { Faker::Internet.email }
    password  { 'password' }
    name      { Faker::Name.first_name }
    surname   { Faker::Name.last_name }
    role      { User.roles.keys.sample }
  end

  factory :trainer, parent: :user do
    role { :trainer }
  end

  factory :trainee, parent: :user do
    role { :trainee }
  end
end
