class UsersController < ApplicationController
  protect_from_forgery :except => [:sample]
  
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end 
  
  def create
    @user = User.new(params.require(:user).permit(:title, :start, :end, :member, :text))
  if @user.save
    flash[:notice] = "予定を新規登録しました"
    redirect_to :users
  else
    render "new"
  end
  end
 
  def show
    @user = User.find(params[:id])
  end
 
  def edit
    @user = User.find(params[:id])
  end
 
  def update
    @user = User.find(params[:id])
  if @user.update(params.require(:user).permit(:title, :start, :end, :member, :text))
    flash[:notice] = "member01が「#{@user.id}」の情報を更新しました"
    redirect_to :users
  else
    render "edit"
  end
  end
 
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "ユーザーを削除しました"
    redirect_to :users 
  end
end

