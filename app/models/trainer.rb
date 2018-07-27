class Trainer < ApplicationRecord
  has_many :location_trainers
  has_many :locations, through: :location_trainers
  has_many :clients

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, presence: true

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
