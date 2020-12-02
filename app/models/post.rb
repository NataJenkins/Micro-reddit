class Post < ApplicationRecord
  validates :title, :body, :author_id, presence: true
  validates :title, uniqueness: true

  belongs_to :author
  has_many :comment
end
