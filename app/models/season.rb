class Season < ApplicationRecord
  belongs_to :league
  has_many :users, through: :average

end
