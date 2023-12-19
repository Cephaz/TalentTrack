# frozen_string_literal: true

# JobOffer model
class JobOffer < ApplicationRecord
  has_many :job_languages, dependent: :destroy
  has_many :programming_languages, through: :job_languages
  has_many :job_applications, dependent: :destroy
end
