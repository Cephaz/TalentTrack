# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Homes' do
  describe 'GET /index' do
    it 'returns a 200 OK status' do
      get root_path
      expect(response).to have_http_status(:ok)
    end
  end
end
