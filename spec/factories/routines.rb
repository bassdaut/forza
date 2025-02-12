FactoryBot.define do
  factory :routine do
    name { "Routine" }
    trainer { association :user, role: :trainer }
    trainee { association :user, role: :trainee }
  end
end
