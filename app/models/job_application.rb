# frozen_string_literal: true

# JobApplication model
class JobApplication < ApplicationRecord
  APPLICATION_STATUS = %w[Accepted Pending Rejected].freeze
  belongs_to :user

  validates :company_name, presence: true
  validates :job_title, presence: true

  def self.ransackable_attributes(_auth_object = nil)
    %w[company_name job_title application_date application_status
       job_description job_link interview_follow_up]
  end

  def self.ransackable_associations(_auth_object = nil)
    ['user']
  end
end
