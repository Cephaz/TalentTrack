# frozen_string_literal: true

FactoryBot.define do
  factory :job_application do
    user
    company_name { Faker::Company.name }
    job_title { Faker::Job.title }
    application_date { Faker::Date.backward(days: 30) }
    application_status { %w[Pending Accepted Rejected].sample }
    job_description { Faker::Lorem.paragraph }
    job_link { Faker::Internet.url }
    interview_follow_up { Faker::Lorem.paragraph }

    trait :with_user do
      association :user
    end
  end
end
