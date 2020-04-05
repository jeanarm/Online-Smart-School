class UsersController < ApplicationController
  def index
    @search =User.search(params[:q])
    @users = @search.result.order(:name).page(params[:page])
  end
def show
  @user = User.find(params[:id])
end

end
