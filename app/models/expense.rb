class Expense < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :group_expenses, dependent: :destroy
  has_many :groups, through: :group_expenses

  validates :name, presence: true, length: { minimum: 3 }
  validates :amount, presence: true, numericality: true
  validates :author, presence: true
end
