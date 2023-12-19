# frozen_string_literal: true

FactoryBot.define do
  factory :job_application do
    user
    job_offer
    status { 'pending' }
    application_date { 1.day.ago.to_date }
    comment { 'I am interested in this job.' }
  end
end
