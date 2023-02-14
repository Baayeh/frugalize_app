class GroupsController < ApplicationController
  before_action :authenticate_user!
  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create; end
end
