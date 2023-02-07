FactoryBot.define do
  factory :project do
    title { "Project1" }
    due_date { "2023-04-07" }
    description { Faker::Lorem.paragraph }
    status { 1 }
  end
end
