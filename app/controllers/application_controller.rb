class ApplicationController < ActionController::API
  def not_found
    render json: { error: 'not_found' }
  end

  def authorize_request
    header = request.headers['Authorization']
    header = header.split(' ').last if header
    begin
      # proper auth
      @decoded = JsonWebToken.decode(header)
      @current_user = Account.find(@decoded[:user_id])
      
      # dummy for disabled auth
      # @current_user = Account.find_by_user_id("100")
    rescue ActiveRecord::RecordNotFound => e
      render json: { errors: e.message }, status: :unauthorized
    rescue JWT::DecodeError => e
      render json: { errors: e.message }, status: :unauthorized
    end
  end

  def is_their_account?
    header = request.headers['Authorization']
    header = header.split(' ').last if header
    begin
      # proper auth
      @decoded = JsonWebToken.decode(header)
      @current_user = Account.find(@decoded[:user_id])
      
      # dummy for disabled auth
      # @current_user = Account.find_by_user_id("100")
      
      # @current_user = Account.find_by_user_id("100") # dummy
      @is_their_account = true
    rescue ActiveRecord::RecordNotFound => e
      @is_their_account = false
    rescue JWT::DecodeError => e
      @is_their_account = false
    end
  end
end
