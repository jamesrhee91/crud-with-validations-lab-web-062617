class Song < ActiveRecord::Base
  validates :title, presence: true, uniqueness: {scope: :release_year}
  validates :released, inclusion: {in: [true, false]}
  validates :artist_name, :genre, presence: true
  validates :release_year, numericality: {less_than_or_equal_to: Date.today.year}, if: :released

end
