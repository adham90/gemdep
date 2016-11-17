require 'rails_helper'

RSpec.describe 'Rgems', type: :request do
  describe 'GET /rgems' do
    it 'works! (now write some real specs)' do
      get rgems_path
      expect(response).to have_http_status(200)
    end
  end
end
