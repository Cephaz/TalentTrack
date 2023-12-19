# frozen_string_literal: true

FactoryBot.define do
  factory :job_language do
    job_offer
    programming_language
    level { %w[junior mid senior].sample }
  end
end
