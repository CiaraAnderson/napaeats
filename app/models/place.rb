class Place < ApplicationRecord
  belongs_to :user
  has_many :comments
  
  geocoded_by :address
  after_validation :geocode 
  validates :name, presence: true, length: { minimum: 4 }
  validates :address, presence: true
  validates :description, presence: true
end


class Photo < ApplicationRecord
  belongs_to :place
  has_many :photos
end
