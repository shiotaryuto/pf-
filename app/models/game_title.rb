class GameTitle < ApplicationRecord
  
  has_many :games, dependent: :destroy

end
