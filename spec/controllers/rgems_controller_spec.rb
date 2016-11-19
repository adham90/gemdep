require 'rails_helper'

RSpec.describe RgemsController, type: :controller do
  describe 'GET #index' do
    let!(:rgem) { create :rgem, :wirh_dependencies }

    it 'should return json that match schema' do
      get :index, params: { gems: [rgem.name], os: 'linux' }

      expect(response.status).to eq 200
      expect(response.body).to match_response_schema('rgems')
    end

    it 'should return correct dependencies' do
      get :index, params: { gems: [rgem.name], os: 'linux' }

      dependencies = JSON.parse(response.body)['dependencies']
      data = rgem.dependencies.map { |dep| dep['name'] }
      expect(dependencies).to eq(data)
    end

    it 'should return unknown dependencies' do
      unknown_gems = %w(unknown1 unknown2)
      get :index, params: { gems: unknown_gems, os: 'linux' }

      res = JSON.parse(response.body)['unknown']
      expect(res).to eq(unknown_gems)
    end
  end

  describe 'POST #create' do
    it 'should create new gem with dependencies' do
      gem_name     = 'unknown_gem'
      dependencies = %w(test test2)
      post :create, params: { gem: gem_name, os: 'linux',
                              dependencies: dependencies }

      expect(response.status).to eq 201
      expect(Rgem.last.name).to eq(gem_name)
      expect(Rgem.last.dependencies.map(&:name)).to eq(dependencies)
    end
  end
end
