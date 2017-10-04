require 'rails_helper'

RSpec.describe 'Visitations', type: :request do
  describe 'GET /visitations' do
    it 'works! (now write some real specs)' do
      get visitations_path
      expect(response).to have_http_status(200)
    end
  end
end
