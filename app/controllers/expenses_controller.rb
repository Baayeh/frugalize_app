class ExpensesController < ApplicationController
  def index
    @group = Group.includes(:group_expenses).find(params[:group_id])
  end

  def new
    @group = Group.find(params[:group_id])
    @expense = Expense.new
  end

  def create
    @expense = current_user.expenses.new(expense_params)
    @group = Group.find(params[:group_id])

    respond_to do |format|
      if @expense.save
        GroupExpense.create(group: @group, expense: @expense)
        format.html do
          redirect_to user_group_expenses_url(current_user, @group), notice: 'Transaction was successfully created.'
        end
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

  def expense_params
    params.require(:expense).permit(:name, :amount)
  end
end
