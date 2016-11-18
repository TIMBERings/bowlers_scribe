class Average < ApplicationRecord
  belongs_to :season
  belongs_to :member, class_name: 'User'
end
