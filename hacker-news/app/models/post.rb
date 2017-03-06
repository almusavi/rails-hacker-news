class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user
  validates :title, :body, :user_id, presence: true
end
