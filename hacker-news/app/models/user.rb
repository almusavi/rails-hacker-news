class User < ActiveRecord::Base
  has_many :comments
  has_many :posts
  validates :username, :email, :password, presence: true
  validates :username, :email, uniqueness: true


  include BCrypt

  def self.authenticate(username, password_attempt)
    user = User.find_by(username: username)
    if user
      return user if user.password == password_attempt
    end
  end

  def password
    @password ||= Password.new(hashed_password)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.hashed_password = @password
  end
end
