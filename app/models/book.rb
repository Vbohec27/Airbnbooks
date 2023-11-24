class Book < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  validates :title, presence: true
  validates :author, presence: true
  validates :address, presence: true
  validates :price, presence: true
  validates :description, length: { maximum: 320 }, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # serialize :genre, coder: JSON
  VALID_GENRES = ['Fiction', 'Non-fiction', 'Mystery', 'Science Fiction', 'Fantasy', 'Y/A']

  # validate :validate_genre

  def validate_genre
    errors.add(:genre, 'Invalid genres') unless self.genre[1..-1].all? { |genre| VALID_GENRES.include?(genre) }
  end
end
