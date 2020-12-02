class Post < ApplicationRecord
    validate :title, :body, :author_id, presence:true
    validate :title, uniqueness: true

    belongs_to :author
end
