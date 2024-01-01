# frozen_string_literal: true

# JobApplication model
class JobApplication < ApplicationRecord
  belongs_to :user

  validates :company_name, presence: true
  validates :job_title, presence: true

  scope :sorted, -> { order(application_date: :desc) }
end
