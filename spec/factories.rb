FactoryBot.define do
  factory :item do
    title { 'Item1' }
    status { 1 }
    task { nil }
  end

  factory :task do
    title { 'Task1' }
    due_date { '2023-03-07' }
    description { 'Faker::Lorem.paragraph' }
    estimated_time { 1 }
    status { 1 }
  end

  factory :user do
    email { 'user1@ymail.com' }
    password { '123456' }
    full_name { 'User1' }
    phone_number { '+61 123 456 789' }
  end

  factory :project do
    title { 'Project1' }
    due_date { '2023-04-07' }
    description { Faker::Lorem.paragraph }
    status { 1 }
  end
end
