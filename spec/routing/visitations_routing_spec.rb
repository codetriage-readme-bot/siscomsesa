require 'rails_helper'

RSpec.describe VisitationsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/visitations').to route_to('visitations#index')
    end

    it 'routes to #new' do
      expect(get: '/visitations/new').to route_to('visitations#new')
    end

    it 'routes to #show' do
      expect(get: '/visitations/1').to route_to('visitations#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/visitations/1/edit').to route_to('visitations#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/visitations').to route_to('visitations#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/visitations/1').to route_to('visitations#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/visitations/1').to route_to('visitations#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/visitations/1').to route_to('visitations#destroy', id: '1')
    end
  end
end
