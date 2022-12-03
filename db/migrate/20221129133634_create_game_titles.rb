class CreateGameTitles < ActiveRecord::Migration[6.1]
  def change
    create_table :game_titles do |t|
      
      t.string :name, null:false

      t.timestamps
    end
  end
end
