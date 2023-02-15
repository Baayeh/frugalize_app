require 'rails_helper'

RSpec.describe GroupExpense, type: :model do
  let(:author) { create(:user) }
  let(:group) { create(:group, author:) }
  let(:expense) { create(:expense, author:) }
  let(:group_expenses) { create(:group_expenses, group:, expense:) }

  describe 'associations' do
    it { is_expected.to belong_to(:group) }
    it { is_expected.to belong_to(:expense) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:group) }
    it { is_expected.to validate_presence_of(:expense) }
  end
end
