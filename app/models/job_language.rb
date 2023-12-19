# frozen_string_literal: true

# JobLanguage model
class JobLanguage < ApplicationRecord
  belongs_to :job_offer
  belongs_to :programming_language
end
