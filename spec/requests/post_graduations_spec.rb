require 'rails_helper'

RSpec.describe 'PostGraduations', type: :request do
  describe 'GET /post_graduations' do
    it 'works! (now write some real specs)' do
      get post_graduations_path
      expect(response).to have_http_status(200)
    end
  end
end
