class ExpensesController < ApplicationController
  def index
    @group = Group.includes(:group_expenses).find(params[:group_id])
  end

  def new
    @expense = Expense.new
  end

  def create; end
end
