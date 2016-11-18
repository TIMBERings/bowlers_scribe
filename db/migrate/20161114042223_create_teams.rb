class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :captain_id, foreign_key: true

      t.timestamps
    end

    create_table :members_teams, id: false do |t|
      t.integer :member_id, index: true
      t.integer :team_id, index: true

      t.timestamps
    end
  end
end
