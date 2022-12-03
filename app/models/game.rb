class Game < ApplicationRecord
  belongs_to :game_title
  belongs_to :user
  has_many :post_comments, dependent: :destroy
end
