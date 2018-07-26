class Trainer < ApplicationRecord
  has_many :location_trainers
  has_many :locations, through: :location_trainers
end
