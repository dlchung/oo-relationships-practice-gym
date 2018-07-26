class Location < ApplicationRecord
  has_many :location_trainers
  has_many :trainers, through: :location_trainers
end
