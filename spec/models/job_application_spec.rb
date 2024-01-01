# frozen_string_literal: true

require 'rails_helper'

RSpec.describe JobApplication do
  describe 'Job creation' do
    it 'build a valid job_application' do
      job_application = build(:job_application)

      expect(job_application).to be_valid
    end
  end
end
