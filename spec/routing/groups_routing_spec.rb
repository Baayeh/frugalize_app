require 'rails_helper'

RSpec.describe GroupsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/users/1/groups').to route_to('groups#index', user_id: '1')
    end

    it 'routes to #new' do
      expect(get: '/users/1/groups/new').to route_to('groups#new', user_id: '1')
    end

    it 'routes to #create' do
      expect(post: '/users/1/groups').to route_to('groups#create', user_id: '1')
    end
  end
end
