class UsersController < ApplicationController
  before_action :authenticate_user!, :except=>[:show]
<<<<<<< HEAD
  before_action :admin_user,     only: :destroy
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_url
  end

  def index
    @users = User.paginate(page: params[:page])
  end

=======
  
  def index
    @users = User.all
  end
  
>>>>>>> fadab1e8e4fc52db75c637b3b03b82a74dd076b4
  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.paginate(page: params[:page])
  end
  
  private
  
   def admin_user
     redirect_to(root_path) unless current_user.admin?
   end
end
