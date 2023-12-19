# frozen_string_literal: true

require 'rails_helper'

RSpec.describe JobApplication do
  describe 'Job application creation' do
    let(:job_application) { create(:job_application) }

    it 'creates a valid job application' do
      expect(job_application).to be_valid
    end
  end
end
