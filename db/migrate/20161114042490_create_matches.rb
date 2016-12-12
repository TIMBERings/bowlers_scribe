class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.integer :left_team_id, null: false
      t.integer :right_team_id, null: false
      t.integer :left_lane, null: false
      t.integer :right_lane, null: false
      t.float :left_team_dues, null: false
      t.float :right_team_dues, null: false
      t.float :left_points_won, null: false, default: 0
      t.float :right_points_won, null: false, default: 0
      t.references :week, foreign_key: true

      t.timestamps
    end
  end
end
