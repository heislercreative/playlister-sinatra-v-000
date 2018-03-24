class Genre < ActiveRecord::Base
  extend Slugify::find_by_slug
  include Slugify::slug

  has_many :song_genres
  has_many :songs, through: :song_genres
  has_many :artists, through: :songs
end
