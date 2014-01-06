class Post < ActiveRecord::Base
  belongs_to :user
  has_many :likes
  scope :ordered, -> { order(likes_count: :desc, created_at: :desc) }
end
