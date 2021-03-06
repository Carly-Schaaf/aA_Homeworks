require 'bcrypt'
class User < ApplicationRecord
  validates :username, :session_token, presence: true
  validates :password_digest, presence: {message: "Password can't be blank"}
  validates :password, length: {minimum: 6, allow_nil: true}

  attr_reader :password

  before_validation :ensure_session_token

  def ensure_session_token
    self.session_token ||= User.generate_session_token
  end

  def self.find_by_credentials(username, password)
    User.where(username: :username, password: :password)
  end

  def self.generate_session_token
    SecureRandom::urlsafe_base64
  end

  def reset_session_token!
    session_token = User.generate_session_token
    self.save(session_token: session_token)
  end

  def password=(value)
    @password = value
    self.password_digest = BCrypt::Password.create(@password).to_s
  end
end
