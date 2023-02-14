class Group < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :group_expenses, dependent: :destroy
  has_many :expenses, through: :group_expenses

  validates :name, presence: true, length: { minimum: 5 }
  validates :icon, presence: true
  validates :author, presence: true

  def total_amount_of_transactions
    sum = 0
    group_expenses.each do |item|
      sum += item.expense.amount
    end
    sum
  end

  def recent_transactions
    group_expenses.order(created_at: :desc)
  end
end
