class CreateLeagues < ActiveRecord::Migration[5.0]
  def change
    create_table :leagues do |t|
      t.integer :manager_id, foreign_key: true
      t.string :name, null: false

      t.timestamps
    end
  end
end
