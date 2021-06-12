# frozen_string_literal:true

FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { '1234567' }
    password_confirmation { '1234567' }
  end
end
