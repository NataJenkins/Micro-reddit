class Post < ApplicationRecord
    validates :title, :body, :author_id, presence:true
    validates :title, uniqueness: true

    belongs_to :authors
end
