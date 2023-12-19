# frozen_string_literal: true

# JobApplication model
class JobApplication < ApplicationRecord
  belongs_to :user
  belongs_to :job_offer
end
