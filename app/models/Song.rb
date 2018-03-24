class Song < ActiveRecord::Base
  extend Slugify::find_by_slug
  include Slugify::slug

  belongs_to :artist
  has_many :song_genres
  has_many :genres, through: :song_genres
end
