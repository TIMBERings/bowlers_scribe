class League < ApplicationRecord
  belongs_to :manager, class_name: 'User'
  has_many :seasons
end
