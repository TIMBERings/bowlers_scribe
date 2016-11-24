class Average < ApplicationRecord
  belongs_to :season
  belongs_to :member, foreign_key: :member_id, class_name: 'User'

end
