class Book < ApplicationRecord
  belongs_to :user
  validates :description, length: { maximum: 320 }
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
