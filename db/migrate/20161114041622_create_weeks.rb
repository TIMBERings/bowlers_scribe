class CreateWeeks < ActiveRecord::Migration[5.0]
  def change
    create_table :weeks do |t|
      t.datetime :date, null: false
      t.integer :number, null: false
      t.references :season, foreign_key: true

      t.timestamps
    end
  end
end
