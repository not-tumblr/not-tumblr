class AccountsController < ApplicationController
  before_action :set_account, only: [:show]
  before_action :is_their_account?, only: [:show]
  before_action :authorize_request, only: [:update, :destroy]
  # before_action :authorize_request, only: [:show, :update, :destroy]

  # GET /accounts
  def index
    @accounts = Account.all
    render json: @accounts
  end

  # GET /accounts/1
  def show
    if @is_their_account
      @posts = Post.find_by_owner(params[@current_user])
    else
      @posts = Post.find_by_owner(params[@account])
    end

    # show_account = @is_their_account ? @current_user : @account
    # Post.find_by_owner(params[show_account])

    render json: @posts
  end

  private
    def set_account
      @account = Account.find_by_user_id(params[:_user_id])
      # @account = Account.find(params[:id])
    end
end
