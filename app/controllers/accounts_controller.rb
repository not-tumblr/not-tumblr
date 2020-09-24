class AccountsController < ApplicationController
  # before_action :set_account, only: [:show, :update, :destroy]
  before_action :authorize_request, only: [:show, :update, :destroy]

  # GET /accounts
  def index
    @accounts = Account.all
    render json: @accounts
  end

  # GET /accounts/1
  def show
    # render json: @account
    # print(@current_user)
    # render json: @current_user
    
    @posts = Post.find_by_owner(params[@current_user])
    render json: @posts
  end

  # private
  #   def set_account
  #     @account = Account.find_by_user_id(params[:_user_id])
  #     # @account = Account.find(params[:id])
  #   end
end
