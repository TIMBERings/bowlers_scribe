class Season < ApplicationRecord
  belongs_to :league
  has_and_belongs_to_many :users

end
