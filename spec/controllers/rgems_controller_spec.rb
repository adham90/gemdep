require 'rails_helper'

RSpec.describe RgemsController, type: :controller do
  describe 'GET #index' do
    let!(:rgem) { create :rgem, :wirh_dependencies }

    it 'should return json that match schema' do
      get :index, params: { gems: rgem.name, os: 'linux' }

      expect(response.status).to eq 200
      expect(response.body).to match_response_schema('rgems')
    end

    it 'should return correct data' do
      get :index, params: { gems: rgem.name, os: 'linux' }

      body = JSON.parse(response.body)
      dependencies = body[0]['dependencies'].map { |dep| dep['name'] }
      data = rgem.dependencies.map { |dep| dep['name'] }

      expect(dependencies).to eq(data)
    end
  end
end
