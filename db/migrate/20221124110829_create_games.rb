class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|

      t.integer :game_title_id, null: false
      t.string :title, null:false
      t.string :body, null:false
      t.integer :user_id, null:false
      t.timestamps
    end
  end
end
