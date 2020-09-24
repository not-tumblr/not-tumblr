class AccountsController < ApplicationController
  before_action :set_account, only: [:show, :update, :destroy]
  # before_action :authorize_request, only: [:show, :update, :destroy]

  # GET /accounts
  def index
    @accounts = Account.all

    render json: @accounts
  end

  # GET /account/1
  def show
    render json: @account
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account
      @account = Account.find(params[:user_id])
    end

end
