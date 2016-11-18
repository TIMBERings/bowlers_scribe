class Game < ApplicationRecord
  belongs_to :match
  belongs to :member, foreign_key: :member_id, class_name: 'User'
end
