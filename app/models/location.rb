class Location < ApplicationRecord
  has_many :location_trainers
  has_many :trainers, through: :location_trainers

  validates :name, presence: true
  validates :city, presence: true
  validates :state, presence: true
end
