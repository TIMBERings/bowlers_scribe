class CreateAverages < ActiveRecord::Migration[5.0]
  def change
    create_table :averages do |t|
      t.float :average
      t.integer :number_of_games, null: false, default: 0
      t.integer :total_pinfall, null: false, default: 0
      t.references :season, foreign_key: true, index: true
      t.references :member, foreign_key: true, index: true

      t.timestamps
    end
  end
end
