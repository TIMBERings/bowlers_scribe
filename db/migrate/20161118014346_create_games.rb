class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.references :match, foreign_key: true
      t.integer :scratch_total
      t.integer :handicap
      t.integer :total_score
      t.date :performed_date
      t.integer :member_id, index: true
      t.integer :game_number
      t.integer :game_position
      t.timestamps
    end
  end
end
