class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  devise :confirmable if Rails.configuration.patient_email_confirmation

  has_many :leagues, foreign_key: :manager_id # manager
  has_many :seasons, through: :average # participant

  has_many :teams, foreign_key: :captain_id
  has_and_belongs_to_many :teams, class_name: 'Team', :join_table => :members_teams, foreign_key: :member_id

  has_many :averages, foreign_key: :member_id
  has_many :games, foreign_key: :member_id

  def full_name
    "#{first_name} #{last_name}"
  end
end
