require 'rails_helper'

RSpec.describe RgemsController, type: :controller do
  describe 'GET #index' do
    let!(:rgem) { create :rgem, :wirh_dependencies }

    it 'should render all dependencies' do
      get :index, params: { gems: rgem.name }

      expect(response.status).to eq 200
      expect(response).to match_response_schema('rgems')
    end
  end
end
