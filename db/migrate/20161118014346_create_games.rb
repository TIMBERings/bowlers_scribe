class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.references :match, foreign_key: true
      t.integer :score
      t.date :performed_date

      t.timestamps
    end
  end
end
