class Book < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  validates :description, length: { maximum: 320 }
end
