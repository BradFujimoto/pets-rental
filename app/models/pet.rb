class Pet < ApplicationRecord
  SPECIES = [ "Cat", "Dog", "Meerkat", "Spider", "Elephant", "Mouse", "Parrot", 'Wolf','Panda', 'Scorpion', 'Lion', 'Iguane']
  ENVIRONMENT = [ "Indoor", "Outdoor", "Both"]

  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, presence: true
  validates :species, presence: true, inclusion: { in: SPECIES  }
  validates :environment, presence: true, inclusion: { in: ENVIRONMENT }
  validates :price, presence: true
  validates :address, presence: true
end
