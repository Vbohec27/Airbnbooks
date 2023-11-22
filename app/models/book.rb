class Book < ApplicationRecord
  belongs_to :user
  validates :description, length: { maximum: 320 }
end
