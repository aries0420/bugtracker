FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@bugtracker.com" }
    password "password"
    password_confirmation "password"
  end
end
