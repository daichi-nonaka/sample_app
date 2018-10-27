class UsersController < ApplicationController
  before_action :authenticate_user!, :except=>[:show]

  def index
    @users = User.paginate(page: params[:page])
  end

  def show
    @user = User.find(params[:id])
  end
end
