require 'rails_helper'

RSpec.describe RgemsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/rgems').to route_to('rgems#index')
    end

    it 'routes to #new' do
      expect(get: '/rgems/new').to route_to('rgems#new')
    end

    it 'routes to #show' do
      expect(get: '/rgems/1').to route_to('rgems#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/rgems/1/edit').to route_to('rgems#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/rgems').to route_to('rgems#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/rgems/1').to route_to('rgems#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/rgems/1').to route_to('rgems#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/rgems/1').to route_to('rgems#destroy', id: '1')
    end
  end
end
