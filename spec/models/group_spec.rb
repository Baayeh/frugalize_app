require 'rails_helper'

RSpec.describe Group, type: :model do
  let(:author) { create(:user) }
  let(:group) { create(:group, author:) }

  describe 'associations' do
    it { is_expected.to belong_to(:author) }
    it { is_expected.to have_many(:group_expenses) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_length_of(:name).is_at_least(5) }
    it { is_expected.to validate_presence_of(:icon) }
    it { is_expected.to validate_presence_of(:author) }
  end
end