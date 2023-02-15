require 'rails_helper'

RSpec.describe ExpensesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/users/1/groups/1/expenses').to route_to('expenses#index', user_id: '1', group_id: '1')
    end

    it 'routes to #new' do
      expect(get: '/users/1/groups/1/expenses/new').to route_to('expenses#new', user_id: '1',  group_id: '1')
    end

    it 'routes to #create' do
      expect(post: '/users/1/groups/1/expenses').to route_to('expenses#create', user_id: '1', group_id: '1')
    end
  end
end
