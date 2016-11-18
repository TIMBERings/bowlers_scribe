class Match < ApplicationRecord
  belongs_to :week
  belongs_to :left_team, class_name: 'Team'
  belongs_to :right_team, class_name: 'Team'

  def teams
    left_team + right_team
  end
end
