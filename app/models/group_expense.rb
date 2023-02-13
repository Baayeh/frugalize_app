class GroupExpense < ApplicationRecord
  belongs_to :group
  belongs_to :expense

  validates :group, presence: true
  validates :expense, presence: true
end
