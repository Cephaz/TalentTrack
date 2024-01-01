# frozen_string_literal: true

FactoryBot.define do
  factory :job_application do
    transient do
      user { nil }
    end

    user { user || association(:user) }
    company_name { Faker::Company.name }
    job_title { Faker::Job.title }
    application_date { Faker::Date.backward(days: 30) }
    application_status { %w[Pending Accepted Rejected].sample }
    job_description { Faker::Lorem.paragraph }
    job_link { Faker::Internet.url }
    interview_follow_up { Faker::Lorem.paragraph }
  end
end
