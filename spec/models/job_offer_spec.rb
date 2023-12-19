# frozen_string_literal: true

require 'rails_helper'

RSpec.describe JobOffer do
  describe 'Job offer creation' do
    let(:job_offer) { create(:job_offer) }

    it 'creates a valid job offer' do
      expect(job_offer).to be_valid
    end
  end
end
