class Team < ApplicationRecord
  belongs_to :captain, class_name: 'User'
  has_many :left_matches, foreign_key: :left_team_id, class_name: 'Match'
  has_many :right_matches, foreign_key: :right_team_id, class_name: 'Match'
  has_and_belongs_to_many :members, class_name: 'User', :join_table => :members_teams, association_foreign_key: :member_id

  def matches
    left_matches + right_matches
  end

  def number_of_bowlers
    self.members.count
  end
end
