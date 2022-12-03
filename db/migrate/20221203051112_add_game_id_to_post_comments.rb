class AddGameIdToPostComments < ActiveRecord::Migration[6.1]
  def change
    add_column :post_comments, :game_id, :integer
  end
end
