class Game < ApplicationRecord
  belongs_to :match
  belongs_to :member, foreign_key: :member_id, class_name: 'User'
end
