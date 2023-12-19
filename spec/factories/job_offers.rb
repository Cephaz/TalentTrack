# frozen_string_literal: true

FactoryBot.define do
  factory :job_offer do
    title { Faker::Job.title }
    description { Faker::Lorem.paragraph }
    company { Faker::Company.name }
  end
end
