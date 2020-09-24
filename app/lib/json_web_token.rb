class JsonWebToken
  SECRET_KEY = Rails.application.secrets.secret_key_base. to_s

  def self.decode(token)
    decoded = JWT.decode(token, SECRET_KEY)[0]
    HashWithIndifferentAccess.new decoded
  end
end
