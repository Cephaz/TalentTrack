# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProgrammingLanguage do
  describe 'Programming language creation' do
    let(:programming_language) { create(:programming_language) }

    it 'creates a valid programming language' do
      expect(programming_language).to be_valid
    end
  end
end
