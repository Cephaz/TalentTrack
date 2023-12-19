# frozen_string_literal: true

require 'rails_helper'

RSpec.describe JobLanguage do
  describe 'Job language creation' do
    let(:job_language) { create(:job_language) }

    it 'creates a valid job language' do
      expect(job_language).to be_valid
    end

    it 'associates the job language with a job offer' do
      expect(job_language.job_offer).to be_present
    end

    it 'associates the job language with a programming language' do
      expect(job_language.programming_language).to be_present
    end
  end
end
