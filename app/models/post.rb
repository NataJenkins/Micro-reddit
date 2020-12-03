class Post < ApplicationRecord
  validates :title, :body, :user_id, presence: true
  validates :title, uniqueness: true

  belongs_to :user
  has_many :comment
end
