class CreateSeasons < ActiveRecord::Migration[5.0]
  def change
    create_table :seasons do |t|
      t.references :league, foreign_key: true, null: false
      t.integer :year, null: false
      t.integer :day, null: false
      t.date :start_date, null: false
      t.integer :number_of_weeks, null: false
      t.integer :roll_off_weeks, array: true, default: []
      t.date :dates_off, array: true, default: []
      t.integer :handicap_base, null: false, default: 220
      t.integer :handicap_percent, null: false, default: 10
      t.string :location
      t.integer :practice_length, nullable: false
      t.string :starts_at, nullable: false
      t.timestamps
    end

    create_table :members_seasons, id: false do |t|
      t.integer :member_id, index: true
      t.integer :season_id, index: true
      t.integer :average
      t.timestamps
    end
  end
end
