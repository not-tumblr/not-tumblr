class AccountsController < ApplicationController
  before_action :set_account, only: [:show, :update, :destroy]
  # before_action :authorize_request, only: [:show, :update, :destroy]

  # GET /accounts
  def index
    @accounts = Account.all
    render json: @accounts
  end

  # GET /accounts/1
  def show
    render json: @account
    
    # @posts = Post.find_by_owner(params[:_user_id])
    # render json: @posts
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account
      @account = Account.find_by_user_id(params[:_user_id])
      # @account = Account.find(params[:id])
    end
end
