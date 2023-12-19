# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User do
  describe 'User creation' do
    let(:user) { create(:user) }

    it 'creates a valid user' do
      expect(user).to be_valid
    end
  end
end
