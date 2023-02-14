class GroupsController < ApplicationController
  before_action :authenticate_user!
  def index
    @groups = current_user.groups
  end

  def new
    @group = Group.new
  end

  def create
    @group = current_user.groups.new(group_params)

    if @group.save
      respond_to do |format|
        format.html { redirect_to user_groups_url(current_user), notice: 'Category was successfully created.' }
      end
    else
      format.html { render :new, status: :unprocessable_entity }
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
