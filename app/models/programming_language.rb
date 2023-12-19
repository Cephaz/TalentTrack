# frozen_string_literal: true

# ProgrammingLanguage model
class ProgrammingLanguage < ApplicationRecord
  has_many :job_languages
  has_many :job_offers, through: :job_languages
end
